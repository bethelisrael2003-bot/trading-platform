#!/bin/bash

# Start all components of the trading platform

# Start backend
echo "Starting backend..."
cd backend && npm start &

# Start frontend
echo "Starting frontend..."
cd frontend && npm start &

# Start Telegram bot
echo "Starting Telegram bot..."
cd telegram-bot && npm start &

# Wait for all components to start
wait

echo "All components started successfully!"