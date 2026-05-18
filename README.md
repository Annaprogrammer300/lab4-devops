# Lab4 DevOps Automation

## Проект содержит:
- `service.sh` - bash-скрипт для запуска HTTP-сервера
- `lab4-service.service` - systemd unit файл
- `lab4-healthcheck.sh` - скрипт проверки работоспособности
- `site.yml` - Ansible playbook для развёртывания

## Автор
Startseva

## Использование
```bash
# Запуск сервиса
sudo systemctl start lab4-service

# Проверка статуса
sudo systemctl status lab4-service

# Healthcheck
sudo /usr/local/bin/lab4-healthcheck.sh
\```
