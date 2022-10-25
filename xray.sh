#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2887ba9b-eaa2-4b47-abcc-354ff421c9b4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

