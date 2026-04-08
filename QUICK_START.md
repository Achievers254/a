# 🚀 Quick Start Guide - Livestock Monitor

## Prerequisites
Make sure you have Node.js installed on your computer:
- Download from: https://nodejs.org/ (LTS version recommended)
- Verify installation: `node --version` and `npm --version`

## Windows Users - Easiest Way ⭐

1. **Run the startup script:**
   - Navigate to the `react` folder
   - Double-click `start.bat`
   - Two terminal windows will open

2. **Wait for both to say "Ready" or "Running"**
   - Backend terminal should show: `Server running on http://localhost:5000`
   - Frontend terminal should show: `VITE v... ready in ... ms` and a localhost URL

3. **Open your browser:**
   - Visit `http://localhost:5173`

## Mac/Linux Users

1. **Open two terminals in the `react` folder**

2. **Terminal 1 - Start Backend:**
   ```bash
   cd backend
   npm install
   npm start
   ```
   Should show: `Server running on http://localhost:5000`

3. **Terminal 2 - Start Frontend:**
   ```bash
   cd react-app
   npm install
   npm run dev
   ```
   Should show a localhost URL (usually `http://localhost:5173`)

4. **Open your browser:**
   - Visit the URL shown in Terminal 2

## Manual Start (All Systems)

If the scripts don't work:

### Backend (Terminal 1):
```bash
cd react/backend
npm install
npm start
```

### Frontend (Terminal 2):
```bash
cd react/react-app
npm install
npm run dev
```

Then visit `http://localhost:5173`

## ✅ Everything Running?

You should see:
- ✅ Backend: `Server running on http://localhost:5000`
- ✅ Frontend: Shows Livestock Monitor app in browser
- ✅ Now you can add animals and track their activities!

## 🆘 Troubleshooting

**Port already in use?**
- Backend: Edit `backend/server.js` line 5: `const PORT = 5001;`
- Frontend: Vite will suggest another port automatically

**Module not found errors?**
- Delete `node_modules` folder in both directories
- Run `npm install` again

**Browser won't connect?**
- Make sure backend is running first (Terminal 1)
- Wait 3 seconds after starting backend
- Try clearing browser cache (Ctrl+Shift+Delete)

**Need to stop?**
- Press `Ctrl+C` in each terminal

---

📖 **Full documentation:** See `LIVESTOCK_MONITOR_README.md`
