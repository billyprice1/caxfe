cd /home/cabox/workspace/

sudo apt-get install supervisor xvfb x11vnc xfce4 shimmer-themes gnome-icon-theme-full -y

git clone https://github.com/kanaka/noVNC
# Setting DSIPLAY in .bashrc
echo "export DISPLAY=localhost:99" >> ~/.bashrc

# Create run file
echo 'echo VNC client running at ' > runvnc.sh
echo 'echo' >> runvnc.sh
echo 'cd' $(pwd) >> runvnc.sh
echo supervisord -c supervisord.conf >> runc9vnc.sh
chmod +x runvnc.sh
