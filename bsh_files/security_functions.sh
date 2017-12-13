rnd_pwd() {
    tr -dc A-Z\-\\\|\(\)\.\?\!\*\_a-z0-9 < /dev/urandom | head -c ${1:-16} | xargs
}
