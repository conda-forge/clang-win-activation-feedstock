About clang-win-activation-feedstock
====================================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/clang-win-activation-feedstock/blob/main/LICENSE.txt)


About clang-win-activation
--------------------------

Home: https://github.com/conda-forge/clang-win-activation-feedstock

Package license: BSD-3-Clause

Summary: clang (cross) compiler for windows with MSVC ABI compatbility

To use this package in a normal conda environment, do the following

   export CONDA_BUILD_WINSDK=/opt

To use this package in a conda-build environment, add the following

   CONDA_BUILD_WINSDK:
     - "/opt"

in $HOME/conda_build_config.yaml and use `clang_win-64` as the compiler.

By setting this variable, you are agreeing to the terms and conditions
of the Windows SDK and the MSVC headers. If the Windows SDK and MSVC
headers are not inside CONDA_BUILD_WINSDK, they would be automatically
downloaded.


About msvc-headers-libs
-----------------------



Package license: LicenseRef-MSVC_HEADERS

Summary: Scripts to download MSVC headers and libraries

About winsdk
------------



Package license: LicenseRef-MICROSOFT_SDK

Summary: Scripts to download Windows SDK headers

Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64_CLANG_VERSION16.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION16.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION16.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION16.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION16.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION16.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION17.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION17.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION17.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION17.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION17.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION17.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION18.1.8CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION18.1.8CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION18.1.8CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION18.1.8CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION18.1.8CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION18.1.8CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION16.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION16.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION16.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION16.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION16.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION16.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION17.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION17.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION17.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION17.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION17.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION17.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION18.1.8CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION18.1.8CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION18.1.8CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION18.1.8CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION18.1.8CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION18.1.8CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION16.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION16.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION16.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION16.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION16.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION16.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION17.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION17.0.6CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION17.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION17.0.6CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION17.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION17.0.6CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION18.1.8CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION18.1.8CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION18.1.8CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION18.1.8CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION18.1.8CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION18.1.8CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139MSVC_HEADERS_VERSION14.29.30133TOOLCHAIN_COMBINED14.29.16.11VCVER14.2channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.40.17.10VCVER14.3channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120MSVC_HEADERS_VERSION14.40.33807TOOLCHAIN_COMBINED14.41.17.11VCVER14.3channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION16.0.6CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION16.0.6CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION16.0.6CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION16.0.6CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION16.0.6CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION16.0.6CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION17.0.6CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION17.0.6CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION17.0.6CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION17.0.6CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION17.0.6CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION17.0.6CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION18.1.8CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION18.1.8CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION18.1.8CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION18.1.8CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION18.1.8CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_main</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION18.1.8CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_main" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.29.30139RUNTIME_VERSION14.29.30139VCVER14.2VSYEAR2019channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.40.33808RUNTIME_VERSION14.40.33810VCVER14.3VSYEAR2022channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_llvm_rc</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=8645&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/clang-win-activation-feedstock?branchName=main&jobName=win&configuration=win%20win_64_CLANG_VERSION19.1.0.rc2CL_VERSION19.41.34120RUNTIME_VERSION14.41.34120VCVER14.3VSYEAR2022channel_targetsconda-forge_llvm_rc" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-clang_win--64-green.svg)](https://anaconda.org/conda-forge/clang_win-64) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/clang_win-64.svg)](https://anaconda.org/conda-forge/clang_win-64) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/clang_win-64.svg)](https://anaconda.org/conda-forge/clang_win-64) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/clang_win-64.svg)](https://anaconda.org/conda-forge/clang_win-64) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-clangxx_win--64-green.svg)](https://anaconda.org/conda-forge/clangxx_win-64) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/clangxx_win-64.svg)](https://anaconda.org/conda-forge/clangxx_win-64) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/clangxx_win-64.svg)](https://anaconda.org/conda-forge/clangxx_win-64) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/clangxx_win-64.svg)](https://anaconda.org/conda-forge/clangxx_win-64) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-msvc--headers--libs-green.svg)](https://anaconda.org/conda-forge/msvc-headers-libs) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/msvc-headers-libs.svg)](https://anaconda.org/conda-forge/msvc-headers-libs) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/msvc-headers-libs.svg)](https://anaconda.org/conda-forge/msvc-headers-libs) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/msvc-headers-libs.svg)](https://anaconda.org/conda-forge/msvc-headers-libs) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-winsdk-green.svg)](https://anaconda.org/conda-forge/winsdk) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/winsdk.svg)](https://anaconda.org/conda-forge/winsdk) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/winsdk.svg)](https://anaconda.org/conda-forge/winsdk) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/winsdk.svg)](https://anaconda.org/conda-forge/winsdk) |

Installing clang-win-activation
===============================

Installing `clang-win-activation` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Once the `conda-forge` channel has been enabled, `clang_win-64, clangxx_win-64, msvc-headers-libs, winsdk` can be installed with `conda`:

```
conda install clang_win-64 clangxx_win-64 msvc-headers-libs winsdk
```

or with `mamba`:

```
mamba install clang_win-64 clangxx_win-64 msvc-headers-libs winsdk
```

It is possible to list all of the versions of `clang_win-64` available on your platform with `conda`:

```
conda search clang_win-64 --channel conda-forge
```

or with `mamba`:

```
mamba search clang_win-64 --channel conda-forge
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search clang_win-64 --channel conda-forge

# List packages depending on `clang_win-64`:
mamba repoquery whoneeds clang_win-64 --channel conda-forge

# List dependencies of `clang_win-64`:
mamba repoquery depends clang_win-64 --channel conda-forge
```


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating clang-win-activation-feedstock
=======================================

If you would like to improve the clang-win-activation recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/clang-win-activation-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@h-vetinari](https://github.com/h-vetinari/)
* [@isuruf](https://github.com/isuruf/)
* [@xhochy](https://github.com/xhochy/)

