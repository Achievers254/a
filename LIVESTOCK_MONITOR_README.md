# 🐓🐐 Livestock Monitor App

A comprehensive management system to monitor and track your livestock (chickens, goats, etc.) including feeding, watering, health, production, and breeding records.

## ✨ Features

- **Individual & Group Tracking**: Manage both individual animals and groups
- **Activity Logging**: Track feeding, watering, health observations, and production
- **Daily Activity Log**: View all activities for the day
- **Statistics & Reports**: Generate reports for any animal or group
- **Health Monitoring**: Log health observations and severity levels
- **Production Tracking**: Track eggs, milk, and other outputs
- **Breeding Records**: Monitor breeding status and expected dates
- **Responsive Design**: Works on desktop, tablet, and mobile

## 📁 Project Structure

```
react-app/                 # Frontend (React + Vite)
├── src/
│   ├── components/       # React components
│   ├── App.tsx          # Main app component
│   ├── App.css          # Styling
│   └── main.tsx         # Entry point
└── ...

backend/                   # Backend API (Node.js + Express)
├── server.js            # Express server
├── database.js          # SQLite database setup
├── package.json         # Dependencies
└── livestock.db         # SQLite database (auto-created)
```

## 🚀 Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn

### Step 1: Install Backend Dependencies

```bash
cd backend
npm install
```

### Step 2: Start the Backend Server

```bash
npm start
```

The API will run on `http://localhost:5000`

You should see: `Server running on http://localhost:5000`

### Step 3: Install Frontend Dependencies

In a new terminal, navigate to the frontend:

```bash
cd react-app
npm install
```

### Step 4: Start the Frontend Development Server

```bash
npm run dev
```

The frontend will run on `http://localhost:5173` (or another port if 5173 is busy)

### Step 5: Open in Browser

Visit `http://localhost:5173` and start monitoring your livestock!

## 📝 How to Use

### 1. Add Animals
- Click "Add Animal" button
- Enter animal details (name, type, breed, age)
- Individual animals can be tracked separately

### 2. Create Groups
- Click "Add Group" button
- Useful for managing multiple animals together (e.g., "Coop A" for 10 chickens)

### 3. Log Activities
From the Dashboard:
- Use quick action buttons (🍽️ Feed, 💧 Water) on any animal/group
- Log feeding amount, type, and notes
- Log watering amount and notes

### 4. Health Tracking
- Go to Activity Log
- Select an animal/group
- Switch to "Health" tab
- Log health observations

### 5. Production Tracking
- Track eggs laid, milk produced, etc.
- View production statistics in Reports

### 6. View Reports
- Click "Reports" tab
- Select an animal or group
- Choose report type (Feeding, Watering, Health, Production)
- View statistics and recent records

## 💾 Database

The app uses SQLite (a file-based database):
- Database file: `backend/livestock.db`
- Created automatically on first run
- All data persists between sessions

### Database Tables
- `animals`: Individual animal records
- `animal_groups`: Group records
- `feeding_records`: Feeding logs
- `watering_records`: Watering logs
- `health_records`: Health observations
- `production_records`: Production outputs
- `breeding_records`: Breeding information
- `activity_notes`: General notes

## 🔧 API Endpoints

### Animals
- `GET /api/animals` - Get all animals
- `POST /api/animals` - Create new animal

### Groups
- `GET /api/groups` - Get all groups
- `POST /api/groups` - Create new group

### Feeding
- `POST /api/feeding` - Log feeding
- `GET /api/feeding/:id` - Get feeding records

### Watering
- `POST /api/watering` - Log watering
- `GET /api/watering/:id` - Get watering records

### Health
- `POST /api/health` - Log health observation
- `GET /api/health/:id` - Get health records

### Production
- `POST /api/production` - Log production
- `GET /api/production/:id` - Get production records

### Breeding
- `POST /api/breeding` - Log breeding event
- `GET /api/breeding/:id` - Get breeding records

### Activity
- `GET /api/activity-log` - Get today's activities

## 🎨 UI Components

### Dashboard
- Filter animals by type (All, Chickens, Goats)
- View individual animals and groups
- Quick action buttons for common tasks

### Activity Log
- Daily activity view
- Filter by activity type
- Detailed records for each activity

### Reports
- Statistics for any animal or group
- Multiple report types
- Historical data table

## 📱 Responsive Design

The app is fully responsive and works on:
- Desktop computers
- Tablets
- Mobile phones

## 🔒 Notes

- Data is stored locally on your computer in SQLite
- No internet connection required (except for initial setup)
- Backup your `backend/livestock.db` file to not lose data

## 🐛 Troubleshooting

### Frontend can't connect to backend
- Make sure backend is running on port 5000
- Check browser console for errors (F12)
- Try clearing browser cache

### Port already in use
- Backend: Change PORT in backend/server.js
- Frontend: Vite will prompt to use another port

### Database errors
- Delete `backend/livestock.db` and restart
- This will create a fresh database

## 🚀 Future Enhancements

- Photo uploads for animals
- Alerts and reminders
- Weather integration
- Multiple farm locations
- Export to CSV/PDF
- Mobile app version

## 📞 Support

For issues or suggestions, check the code comments or modify as needed!

Happy farming! 🌾
