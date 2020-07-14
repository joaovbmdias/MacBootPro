PECAN_FOLDER="$HOME/Library/Application Support/Übersicht/widgets/pecan"

if [ ! -d "$PECAN_FOLDER" ]; then
    echo "> Configuring Übersicht"
    git clone https://github.com/joaovbmdias/pecan.git "$PECAN_FOLDER"
else
    echo "Pecan folder already exists, skipping"
fi