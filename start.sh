#!/bin/bash

# Start Xvfb (Virtual Framebuffer)
Xvfb :1 -screen 0 1024x768x16 &

# Set display untuk VNC
export DISPLAY=:1

# Start x11vnc untuk memberikan akses VNC
x11vnc -display :1 -nopw -listen localhost -xkb &

# Menunggu beberapa saat untuk memastikan X11VNC sudah siap
sleep 5

echo "VNC server is running at localhost:5900"
