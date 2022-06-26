export ClientIP=$(ip addr show eth0 | grep 'inet ' | awk '{print $2}' | cut -f 1 -d '/')
export HostIP=$(cat /etc/resolv.conf | grep 'nameserver' | awk '{print $2}')

showproxy()
{
    echo ''
    echo 'Show Proxy:'
    echo "http_proxy=$http_proxy"
    echo "https_proxy=$https_proxy"
    echo "ftp_proxy=$ftp_proxy"
    echo "ALL_PROXY=$ALL_PROXY"
    echo ''
}

setproxy()
{
    export http_proxy=http://$HostIP:10809/
    export https_proxy=http://$HostIP:10809/
    export ftp_proxy=http://$HostIP:10809/
    export ALL_PROXY=socks5://$HostIP:10808/
    showproxy
    echo "curl --connect-timeout 5 google.com"
    curl --connect-timeout 5 google.com
}

unsetproxy()
{
    unset https_proxy
    unset http_proxy
    unset ftp_proxy
    unset ALL_PROXY
    showproxy
    echo "curl --connect-timeout 5 163.com"
    curl --connect-timeout 5 163.com
}
