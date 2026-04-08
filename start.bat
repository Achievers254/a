@echo off
REM Livestock Monitor App - Quick Start Script (Windows)
REM This script starts both the backend and frontend

echo 🐓🐐 Livestock Monitor - Starting...

REM Install and start backend
echo Starting backend API...
cd backend
call npm install >nul 2>&1
start cmd /k npm start
cd..

REM Wait a moment for backend to start
timeout /t 3 /nobreak

REM Install and start frontend
echo Starting frontend...
cd react-app
call npm install >nul 2>&1
start cmd /k npm run dev
cd..

echo.
echo ✅ Livestock Monitor is starting!
echo.
echo 🌐 Frontend: http://localhost:5173
echo 🔌 Backend API: http://localhost:5000
echo.
echo Check the browser and terminal windows for startup complete messages.
pause
