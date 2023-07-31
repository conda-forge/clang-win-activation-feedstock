#!/bin/bash
set -ex

if [[ "$PKG_NAME" == "msvc-headers-libs" ]]; then
    ################################################################
    # create map of required components/urls for msvc-headers-libs #
    ################################################################

    # create temporary folder
    mkdir temp
    # run utility and pipe logs into a temporary file; need to use the last major
    # VS version as even the _same_ components (e.g. of a previous toolchain) may
    # change names when searched under their own, older major version. See e.g.
    # https://learn.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools
    (python vsdownload.py --major 17 Microsoft.VisualStudio.Component.VC.${TOOLCHAIN_COMBINED}.x86.x64 --cache temp --accept-license --only-download) > logs.txt
    # Filter to downloads, format into `component/artefact|url`, and ensure that spuriously
    # missing linebreaks (e.g. due to races while logging) are reinserted, which
    # needs to account for all possible payload extensions in the urls;
    # finally, remove artefact to arrive at `component|url`
    cat logs.txt | grep -E "Downloading.*" | sed "s/Downloading //g" | sed "s/ from /|/g" \
        | sed -E "s/(cab|exe|msi|msu|ps1|vsix)Microsoft/\1\nMicrosoft/g" | sed -E "s,^([^\/]+)/[^\|]+\|(.*)$,\1|\2,g" > downloads.txt
    # for ease of debugging
    cat downloads.txt

    # We are only interested in the subset that creates the headers and
    # x64 libraries in Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION}/;
    # use ${parameter//pattern/replacement} to make the periods regex-compatible; inspect binary as text (-a)
    rg -ao "Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION//./\.}/(include|lib)" ./temp --sort path > matches.txt

    # determine necessary component names; corresponds to folder before the <payload>.vsix:<match>;
    # only keep one line per component & remove matches for x86 (as opposed to x64, see above)
    cat matches.txt | sed -E "s|^\./temp/([^\/]+)/.*|\1|g" | uniq | grep -iv x86 > components.txt
    # for ease of debugging
    cat components.txt

    # filter downloaded components (& their url) down to those that contain relevant content;
    # do not save as variable with multiline content, which would break sed-insertion below
    COMPONENT_URLS=`python -c "d=dict(x.split('|') for x in open('downloads.txt','r').read().splitlines()); c=open('components.txt','r').read().splitlines(); print(' '.join([f'\"{k}|{v}\"' for k,v in d.items() if k in c]))"`
fi

# ensure conda-smithy picks up these variables when rerendering
echo CHOST_BASE=$CHOST_BASE
echo CL_VERSION=$CL_VERSION

# cut off ".rcX" from PKG_VERSION; suffix is not present in installation path
if [[ "${PKG_VERSION}" == *rc* ]]; then
    export PKG_VERSION=${PKG_VERSION::${#PKG_VERSION}-4}
fi

for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}-${PKG_NAME}.sh" .
    sed -i.bak "s|@CFLAGS@|$FINAL_CFLAGS|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@CXXFLAGS@|$FINAL_CXXFLAGS|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@CHOST@|${CHOST_BASE}${CL_VERSION}|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@PREFIX@|$PREFIX|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@PKG_VERSION@|$PKG_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@MSVC_HEADERS_VERSION@|$MSVC_HEADERS_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@WINSDK_URL@|$WINSDK_URL|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@WINSDK_VERSION@|$WINSDK_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    # cannot have linebreaks in variable COMPONENT_URLS, better to insert them here (+ indent)
    sed -i.bak "s,@COMPONENT_URLS@,${COMPONENT_URLS// /\\n        },g" ${CHANGE}-${PKG_NAME}.sh
    cp ${CHANGE}-${PKG_NAME}.sh ${PREFIX}/etc/conda/${CHANGE}.d/${CHANGE}-${PKG_NAME}.sh
done

CHOST=$CHOST_BASE$CL_VERSION

if [[ "$PKG_NAME" == "clang_win-64" ]]; then
  mkdir -p $PREFIX/bin
  pushd ${PREFIX}/bin
    ln -sf $(which clang) ${CHOST}-clang
    ln -sf $(which clang++) ${CHOST}-clang++
    ln -sf $(which llvm-as) ${CHOST}-as
    ln -sf $(which llvm-lib) lib
  popd
fi
