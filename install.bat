@echo off
chcp 65001 >nul
setlocal
title Teb Kaka - ติดตั้ง snippet

echo.
echo   ========================================
echo     Teb Kaka  ติดตั้ง snippet ลง VS Code
echo   ========================================
echo.

set "DEST=%APPDATA%\Code\User\snippets"
set "FILE=teb-kaka.code-snippets"
set "URL=https://raw.githubusercontent.com/pai1912554/teb-kaka/master/teb-kaka.code-snippets"

if not exist "%DEST%" (
    echo   สร้างโฟลเดอร์ %DEST%
    mkdir "%DEST%" 2>nul
)

if exist "%~dp0%FILE%" (
    echo   ใช้ไฟล์ที่อยู่ข้าง ๆ ตัวติดตั้ง
    copy /y "%~dp0%FILE%" "%DEST%\%FILE%" >nul
) else (
    echo   ไม่เจอไฟล์ในเครื่อง กำลังโหลดจาก GitHub
    powershell -NoProfile -Command "try { Invoke-WebRequest -Uri '%URL%' -OutFile '%DEST%\%FILE%' -UseBasicParsing } catch { exit 1 }"
)

if errorlevel 1 goto fail
if not exist "%DEST%\%FILE%" goto fail

echo.
echo   ติดตั้งเรียบร้อย
echo   ไฟล์อยู่ที่ %DEST%\%FILE%
echo.
echo   วิธีใช้
echo     เปิดไฟล์ .html แล้วพิมพ์  indext1  กด Tab
echo     เปิดไฟล์ .css  แล้วพิมพ์  csst1    กด Tab
echo.
echo   ถ้ากด Tab แล้วไม่ขยาย ให้เปิดค่านี้ใน settings.json
echo     "editor.tabCompletion": "onlySnippets"
echo.
goto end

:fail
echo.
echo   ติดตั้งไม่สำเร็จ
echo   ลองเช็กว่าต่อเน็ตอยู่ไหม หรือวางไฟล์ %FILE% ไว้ข้าง ๆ ตัวติดตั้งแล้วรันใหม่
echo.

:end
pause
