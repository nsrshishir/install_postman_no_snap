echo "Downloading latest postman"; 
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz;

echo "Installing Postman"
echo "Extracting to /opt folder";
sudo tar -xzf postman.tar.gz -C /opt;
sudo ln -s /opt/Postman/Postman /usr/bin/postman;
rm postman.tar.gz

cat <<EOF > ./postman.desktop
[Desktop Entry]
Type=Application
Name=Postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Exec="/opt/Postman/Postman"
Comment=Postman Desktop App
Categories=Development;Code;
EOF

sudo mv ./postman.desktop /usr/share/applications/

echo "Instalation Successfull";
exit

