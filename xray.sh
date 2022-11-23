#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2c66f3d2-d826-404f-bef6-fb9d045af76f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

