@echo off
title TataDana - Super Launcher
set "PATH=C:\Users\ALYA ALIFIA\.gemini\antigravity\tools\node;%PATH%"
cd /d "C:\Users\ALYA ALIFIA\.gemini\antigravity\scratch\tatadana"

echo =========================================================
echo       TATADANA - APLIKASI KEUANGAN & BOT TELEGRAM
echo =========================================================
echo.
echo [1/3] Menjalankan Bot Telegram (@tatadana_alya_bot)...
start "TataDana - Bot Telegram" cmd /c "set PATH=C:\Users\ALYA ALIFIA\.gemini\antigravity\tools\node;%%PATH%% && cd /d C:\Users\ALYA ALIFIA\.gemini\antigravity\scratch\tatadana && node scripts\telegram-poll.mjs"

echo [2/3] Menjalankan Web Server TataDana...
start "TataDana - Web Server" cmd /c "set PATH=C:\Users\ALYA ALIFIA\.gemini\antigravity\tools\node;%%PATH%% && cd /d C:\Users\ALYA ALIFIA\.gemini\antigravity\scratch\tatadana && npm run start"

echo [3/3] Menunggu server siap...
timeout /t 4 /nobreak >nul

echo Membuka TataDana di browser Anda...
start http://localhost:3000/dashboard

echo.
echo =========================================================
echo   SUKSES! APLIKASI & BOT TELAH AKTIF.
echo   - Web Dashboard : http://localhost:3000/dashboard
echo   - Chat Bot Web  : http://localhost:3000/dashboard/chat
echo   - Transfer QRIS : http://localhost:3000/dashboard/transfer
echo   - Bot Telegram  : https://t.me/tatadana_alya_bot
echo =========================================================
echo Jangan tutup jendela terminal ini jika masih menggunakan aplikasi.
pause
