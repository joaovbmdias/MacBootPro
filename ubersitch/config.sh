echo "> Configure Übersicht"

PECAN_FOLDER="$HOME/Library/Application Support/Übersicht/widgets/pecan"

if [ ! -d "$PECAN_FOLDER" ]; then
    git clone https://github.com/darkcl/pecan.git "$PECAN_FOLDER"
else
    echo "Pecan folder already exists, skipping"
fi