@ECHO OFF
if "%1"=="" goto end

mkdir _build
mkdir _install

set VPL_INSTALL_DIR="%cd%\_install"

set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;%PATH%

cd _build

cmake ..\oneVPL -DCMAKE_INSTALL_PREFIX=%VPL_INSTALL_DIR%
cmake --build . --config %1
cmake --build . --config %1 --target install

:end
@ECHO ON