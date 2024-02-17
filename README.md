### Hexlet tests and linter status:
[![Actions Status](https://github.com/forward32/devops-for-programmers-project-77/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/forward32/devops-for-programmers-project-77/actions)

## Зависимости
1) make
2) terraform
3) ansible

## Terraform
В папке terraform лежит все необходое для поднятия инфраструктуры с помощью terraform. В качестве облачного провайдера используется DigitalOcean, сайт доступен по https://forward32.online

## Ansible
В папке ansible лежит все необходимое для настройки окружения и разворачивания Redmine через ansible.

## Как использовать
1) с помощью `make init` инициализируем провайдеров terraform
2) с помощью `make apply` поднимаем инфраструктуру
3) с помощью `make setup` устанавливаем нужный софт на поднятые дроплеты
4) с помощью `make redmine` поднимаем Redmine на поднятых дроплетах в докере
5) с помощью `make datadog` устанавливаем агента на поднятые дроплеты

Чтобы потушить всю поднятую инфраструктуру, используйте `make destroy`.
