#!/bin/bash

# Funktion zum Installieren des Minecraft-Servers
install_minecraft_server() {
    echo "Installing Minecraft server..."
    #!/bin/bash

# Funktion zum Herunterladen und Installieren des Minecraft-Servers
install_minecraft_server() {
    # Verzeichnis für den Minecraft-Server
    local server_dir="/gameserver"
    
    # URL zum Herunterladen des Servers
    local download_url="https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/462/downloads/paper-1.20.4-462.jar"
    
    # Server JAR-Datei herunterladen
    echo "Herunterladen des Minecraft-Servers..."
    curl -O server.jar $download_url
    
    # Start-Skript erstellen
    echo "Erstellen des Start-Skripts..."
    echo "#!/bin/bash" > start.sh
    echo "java -jar server.jar nogui" >> start.sh
    chmod +x start.sh
    
    # EULA akzeptieren
    echo "Akzeptiere die Minecraft-Server-Lizenz..."
    echo "eula=true" > eula.txt
    
    echo "Installation abgeschlossen. Du kannst den Server mit './start.sh' starten."
}

# Hauptprogramm
echo "Willkommen zur Minecraft-Server-Installation."
echo "Dieses Skript wird einen Minecraft-Server herunterladen und einrichten."
echo "Stelle sicher, dass du Java bereits installiert hast."

read -p "Möchtest du mit der Installation fortfahren? (j/n): " choice
if [ "$choice" == "j" ]; then
    install_minecraft_server
    echo "Installation abgeschlossen."
else
    echo "Installation abgebrochen."
fi

}

