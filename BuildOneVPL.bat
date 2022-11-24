@ECHO OFF
if "%1"=="" goto end

mkdir _build
mkdir _build\%1
mkdir _install
mkdir _install\%1

set VPL_INSTALL_DIR="%cd%\_install\%1"

set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;%PATH%

cd _build\%1

cmake ..\..\oneVPL -DCMAKE_INSTALL_PREFIX=%VPL_INSTALL_DIR%
cmake --build . --config %1 --target install

:end
@ECHO ON