echo "> Configure Übersicht"

PECAN_FOLDER="$HOME/Library/Application Support/Übersicht/widgets/pecan"
# XANTHIA_FOLDER="$HOME/Library/Application Support/Übersicht/widgets/xanthia"

if [ ! -d "$PECAN_FOLDER" ]; then
    git clone https://github.com/joaovbmdias/pecan.git "$PECAN_FOLDER"
else
    echo "Pecan folder already exists, skipping"
fi

# if [ ! -d "$XANTHIA_FOLDER" ]; then
#     git clone https://github.com/zzzeyez/xanthia.git "$XANTHIA_FOLDER"
# else
#     echo "Xanthia folder already exists, skipping"
# fi

# ln -s "$XANTHIA_FOLDER/notify-send" "/usr/local/bin/notify-send"