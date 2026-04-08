#!/bin/bash

# Livestock Monitor App - Quick Start Script
# This script starts both the backend and frontend

echo "🐓🐐 Livestock Monitor - Starting..."

# Install and start backend
echo "Starting backend API..."
cd backend
npm install > /dev/null 2>&1 || echo "Backend setup..."
npm start &
BACKEND_PID=$!

echo "⏳ Waiting for backend to start..."
sleep 3

# Install and start frontend
echo "Starting frontend..."
cd ../react-app
npm install > /dev/null 2>&1 || echo "Frontend setup..."
npm run dev &
FRONTEND_PID=$!

echo ""
echo "✅ Livestock Monitor is running!"
echo ""
echo "🌐 Frontend: http://localhost:5173"
echo "🔌 Backend API: http://localhost:5000"
echo ""
echo "Press Ctrl+C to stop both servers"
echo ""

# Keep the script running
trap "kill $BACKEND_PID $FRONTEND_PID" EXIT
wait
