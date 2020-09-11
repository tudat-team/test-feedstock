:::::::::::::::::::::::::::::::::::::::::::
:: Boost
:::::::::::::::::::::::::::::::::::::::::::
cd boost

:: Start with bootstrap
call bootstrap.bat
if errorlevel 1 exit 1

:: Build step
.\b2 install ^
    --build-dir=buildboost ^
    --prefix=%LIBRARY_PREFIX% ^
    toolset=msvc-%VS_MAJOR%.0 ^
    address-model=%ARCH% ^
    variant=release ^
    threading=multi ^
    link=shared ^
    -j%CPU_COUNT% ^
    -s NO_COMPRESSION=0 ^
    -s NO_ZLIB=0 ^
    -s NO_BZIP2=0 ^
    -s ZLIB_INCLUDE=%PREFIX%\Library\include ^
    -s ZLIB_LIBPATH=%PREFIX%\Library\lib ^
    -s ZLIB_BINARY=z ^
    -s BZIP2_INCLUDE=%PREFIX%\Library\include ^
    -s BZIP2_LIBPATH=%PREFIX%\Library\lib ^
    -s BZIP2_BINARY=libbz2 ^
    -s ZSTD_INCLUDE=%PREFIX%\Library\include ^
    -s ZSTD_LIBPATH=%PREFIX%\Library\lib ^
    -s ZSTD_BINARY=zstd ^
    --layout=system ^
    --without-python
if errorlevel 1 exit 1

:: Remove Python headers as we don't build Boost.Python.
del %LIBRARY_INC%\boost\python.hpp
rmdir /s /q %LIBRARY_INC%\boost\python

:: Move dll's to LIBRARY_BIN
move %LIBRARY_LIB%\boost*.dll "%LIBRARY_BIN%"
if errorlevel 1 exit 1

:: Set BOOST_AUTO_LINK_NOMANGLE so that auto-linking uses system layout
echo &echo.                           >> %LIBRARY_INC%\boost\config\user.hpp
echo #define BOOST_AUTO_LINK_NOMANGLE >> %LIBRARY_INC%\boost\config\user.hpp

:::::::::::::::::::::::::::::::::::::::::::
:: Tudat
:::::::::::::::::::::::::::::::::::::::::::
mkdir build
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1
cmake ^
    -G "%CMAKE_GEN%" ^
    -DCMAKE_CXX_STANDARD=14 ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DTUDAT_BUILD_STATIC_LIBRARY=on ^
    -DTUDAT_BUILD_TUDAT_TUTORIALS=off ^
    -DTUDAT_BUILD_TESTS=on ^
    -DTUDAT_BUILD_WITH_SOFA_INTERFACE=on ^
    -DTUDAT_BUILD_WITH_SPICE_INTERFACE=on ^
    -DTUDAT_DOWNLOAD_AND_BUILD_BOOST=off ^
    -DTUDAT_BUILD_WITH_JSON_INTERFACE=on ^
    ..
if errorlevel 1 exit 1
cmake --build . --config RelWithDebInfo --target install
if errorlevel 1 exit 1
ctest --verbose
if errorlevel 1 exit 1
