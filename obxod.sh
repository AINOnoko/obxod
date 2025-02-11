#!/bin/sh

clear
echo "                                                             CTRL-C чтобы выйти
===============================================================================

                                !!! ВНИМАНИЕ !!!

НЕ ЗАПУСКАЙТЕ СКРИПТЫ ИЗ НЕ ПРОВЕРЕННЫХ ИСТОЧНИКОВ! ЗАПУСК ТАКИХ СКРИПТОВ МОЖЕТ
ПРИВЕСТИ   К  ПОЛОМКЕ   ВАШЕЙ  СИСТЕМЫ  ИЛИ  ПОЛУЧЕНИЮ  ВАШЕЙ  КОНФИДЕНЦИАЛЬНОЙ
ИНФОРМАЦИИ МОШЕННИКАМИ!!! Если вы не уверены, что данный скрипт не был изменён,
то следует использовать скрипт, скачанный со страницы GitHub:
                                         https://www.github.com/***************

Данный   скрипт   устанавливает   преднастроенные   dnscrypt-proxy   и  zapret.
Работоспособность  обхода  блокировок  НЕ  гарантируется  при установке скрипта
'из коробки',  поэтому  если  у  вас  не  заработал обход, то следует перейти в
инструкцию и донастроить скрипт своими силами.

ИСПОЛЬЗУЯ  ДАННЫЙ  СКРИПТ  ВЫ  ПОДТВЕРЖДАЕТЕ,  ЧТО  ПОНИМАЕТЕ И ПРИНИМАЕТЕ, ВСЕ
СТРАХИ  И  РИСКИ  СВЯЗАННЫЕ  С  ИСПОЛЬЗОВАНИЕМ  СКРИПТА.  Если вы прочитали это
предупреждение  и  хотите  использовать  скрипт,  то  напишите  'продолжить'. В
противном случае нажмите 'CTRL-C' .

===============================================================================
"

while true; do
    read input
    if [ "$input" = "продолжить" ]; then
        break;
    fi
done
clear
while true; do
    clear
    echo "                                                             CTRL-C чтобы выйти
====[ Меню obxod* ]============================================================

    1) Установить зависимости obxod*
    2) Установить obxod* (Сначала установите зависимости)
    3) Удалить obxod*

    4) Инструкция
    5) Установить zapret
    6) Удалить zapret
    7) Установить dnscrypt-proxy
    8) Удалить dnscrypt-proxy

    9) Очистить resolv.conf


    0) Выход

    obxod - комбинация zapret и dnscrypt-proxy
    ЖЕЛАТЕЛЬНО ПЕРЕЗАГРУЗИТЬ СИСТЕМУ ПОСЛЕ УСТАНОВКИ
===============================================================================
"
    read -r -n 1 input
    clear
    # Установка зависимостей obxod
    if [ "$input" = 1 ]; then
        dnf install dnscrypt-proxy curl* iptable* ipset* -y
        apt-get update
        apt-get install dnscrypt-proxy -y
        # pacman -S dnscrypt-proxy curl* iptable* ipset* -y
    fi
    # Установка obxod
    if [ "$input" = 2 ]; then
        bash ./scripts/install_dnscrypt-proxy.sh
        bash ./scripts/install_zapret.sh
    fi
    # Удаление obxod
    if [ "$input" = 3 ]; then
        bash ./scripts/remove_dnscrypt-proxy.sh
        bash ./scripts/clean_resolv.sh
        bash ./scripts/remove_zapret.sh
    fi
    # Инструкция
    if [ "$input" = 4 ]; then
        cat ./info | less
    fi
    # Установка zapret
    if [ "$input" = 5 ]; then
        bash ./scripts/install_zapret.sh
    fi
    # Удаление zapret
    if [ "$input" = 6 ]; then
        bash ./scripts/remove_zapret.sh
    fi
    # Установка dnscrypt-proxy
    if [ "$input" = 7 ]; then
        bash ./scripts/install_dnscrypt-proxy.sh
    fi
    # Удаление dnscrypt-proxy
    if [ "$input" = 8 ]; then
        bash ./scripts/remove_dnscrypt-proxy.sh
    fi
    # Очистка resolv.conf
    if [ "$input" = 9 ]; then
        bash ./scripts/clean_resolv.sh
    fi
    # Выход
    if [ "$input" = 0 ]; then
        break
    fi
done
clear
