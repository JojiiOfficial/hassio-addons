mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

jq --raw-output '.config' /data/options.json > /openvpn.conf
openvpn --config /openvpn.conf
