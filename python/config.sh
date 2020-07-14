if ! which -s python3
then
    echo "> Configuring Python3"

    pip3 install --upgrade pip
    pip3 install -r python/requirements.txt
fi
