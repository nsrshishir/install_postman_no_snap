echo "Downloading latest postman"; 
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz;

echo "Installing Postman"
echo "Extracting to /usr/share folder";
sudo tar -xzf postman.tar.gz -C /usr/share --overwrite;
sudo ln -s /usr/share/Postman/Postman /usr/bin/postman;
rm postman.tar.gz

cat <<EOF > ./postman.desktop
[Desktop Entry]
Type=Application
Name=Postman
Icon=/usr/share/Postman/app/resources/app/assets/icon.png
Exec="/usr/share/Postman/Postman"
Comment=Postman Desktop App
Categories=Development;Code;
EOF

sudo mv -f./postman.desktop /usr/share/applications/

echo "Instalation Successfull";
exit

