install() {
  sudo dnf install -y cronie
}
status-log() {
  sudo service crond restart
  sudo tail -f /var/log/cron
}
task-list() {
  crontab -l
}
$1
