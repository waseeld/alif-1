REM # ========================
REM # (C)2020 Hassan DRAGA
REM # Alif Studio 2
REM # Win32
REM # www.aliflang.org
REM # License : GPLv3
REM # ========================

Set PATH=C:\Alif\bin
Set FOLDER=C:\Alif\

del "bin\alifstudio.exe"

del *.o
del *.res
del *.d

echo off
cls
echo.

	echo ----------------------------
	echo Alif Studio 2
	echo ----------------------------
	echo.

if exist "bin\alifstudio.exe" (

 echo.
 echo Can't remove Alif Studio..
 
) else (

	echo Compiling...
	echo.

	"%FOLDER%\bin\g++" -finput-charset=utf-8 -c -o "alifstudio.o" -O2 -mthreads -DHAVE_W32API_H -D__WXMSW__ -DwxDEBUG_LEVEL=0 -DNDEBUG -I. -I "%FOLDER%\include" -W -Wno-deprecated-declarations -DNOPCH -Wno-ctor-dtor-privacy -Os -s -fno-keep-inline-dllexport -std=gnu++11 -m32 -MT"alifstudio.o" -MF"alifstudio.o.d" -MD -MP "src\alifstudio.cpp"

	if not exist "alifstudio.o" (
	
		echo.
		echo Error.
		
		pause
		
	) else (
	
		echo Resource...
		echo.
	
		"%FOLDER%\bin\windres.exe" -I "%FOLDER%\include" -J rc -O coff -i "res\win_alifstudio.rc" -o "res\win_alifstudio.res" --define __WXMSW__ --define wxDEBUG_LEVEL=0 --define NDEBUG --define _UNICODE --define NOPCH

		echo Linking...
		echo.
		
		"%FOLDER%\bin\g++" -I "%FOLDER%\include" -Os -static-libgcc -static-libstdc++ -m32 -finput-charset=utf-8 -o "bin\alifstudio.exe" "res\win_alifstudio.res" "alifstudio.o" -mthreads -L"%FOLDER%\lib" -Wl,--subsystem,windows -mwindows -lwxmsw31u_alif_lib_gl -lopengl32 -lglu32 -lwxmsw31u_alif_lib_webview -lwxmsw31u_alif_lib_aui -lwxmsw31u_alif_lib_propgrid -lwxmsw31u_alif_lib_adv -lwxmsw31u_alif_lib_stc -lwxmsw31u_alif_lib_core  -lwxbase31u_alif_lib -lwxscintilla -lwxtiff -lwxjpeg -lwxpng -lwxzlib -lwxregexu -lwxexpat -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme

		if not exist "bin\alifstudio.exe" (
		
				echo.
				echo Error.
				
				pause
				
		) else (
		
			echo Striping...
			echo.

			"%FOLDER%\bin\strip" --strip-all "bin\alifstudio.exe" 
		
			echo Done.
			echo.
			
			pause
		)
	)
)

del *.o
del *.res
del *.d