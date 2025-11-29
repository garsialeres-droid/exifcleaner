#!/bin/bash

# Update system
sudo apt update

# Install Xvfb and fluxbox (lightweight window manager)
sudo apt install -y xvfb fluxbox

# Install noVNC for browser-based VNC
sudo apt install -y websockify novnc

# Install TigerVNC
sudo apt install -y tigervnc-standalone-server

# Start VNC server
mkdir -p ~/.vnc
echo "password" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Start noVNC service in background
nohup websockify --web=/usr/share/novnc/ 6080 localhost:5901 &

# Install Yarn
npm install -g yarn
