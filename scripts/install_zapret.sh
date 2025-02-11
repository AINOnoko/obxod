mkdir /opt
git clone https://github.com/bol-van/zapret.git
cp -r ./zapret /opt
rm -r ./zapret
cp -r ./conf/binaries /opt/zapret/binaries
cp ./conf/ipset-discord.txt /opt/zapret/
cp ./conf/list-general.txt /opt/zapret/
cp ./conf/list-discord.txt /opt/zapret/
while true; do
    clear
    echo "                                                             CTRL-C чтобы выйти
====[ Выбери предустановку ]===================================================

    1) General
    2) General NFQWS
    3) General OLD
    4) General ALT
    5) General ALT2
    6) General ALT3
    7) General ALT4
    8) General ALT5
    9) General МГТС
    0) General МГТС2
    D) Discord

    Q) Продолжить

==============================================================================="
    read -r -n 1 input
    clear
    # General
    if [ "$input" = 1 ]; then
        cp ./conf/general1 /opt/zapret/config
    fi
    # General NFQWS
    if [ "$input" = 2 ]; then
        cp ./conf/general0 /opt/zapret/config
    fi
    # General OLD
    if [ "$input" = 3 ]; then
        cp ./conf/general_old /opt/zapret/config
    fi
    # General ALT
    if [ "$input" = 4 ]; then
        cp ./conf/general1_ALT /opt/zapret/config
    fi
    # General ALT2
    if [ "$input" = 5 ]; then
        cp ./conf/general1_ALT2 /opt/zapret/config
    fi
    # General ALT3
    if [ "$input" = 6 ]; then
        cp ./conf/general1_ALT3 /opt/zapret/config
    fi
    # General ALT4
    if [ "$input" = 7 ]; then
        cp ./conf/general1_ALT4 /opt/zapret/config
    fi
    # General ALT5
    if [ "$input" = 8 ]; then
        cp ./conf/general1_ALT5 /opt/zapret/config
    fi
    # General МГТС
    if [ "$input" = 9 ]; then
        cp ./conf/general1_МГТС /opt/zapret/config
    fi
    # General МГТС2
    if [ "$input" = 0 ]; then
        cp ./conf/general1_МГТС2 /opt/zapret/config
    fi
    # General Discord
    if [ "$input" = 'd' ]; then
        cp ./conf/discord /opt/zapret/config
    fi
    # Выход
    if [ "$input" = 'q' ]; then
        break
    fi
    # General Discord
    if [ "$input" = 'в' ]; then
        cp ./conf/discord /opt/zapret/config
    fi
    # Выход
    if [ "$input" = 'й' ]; then
        break
    fi
done
clear

echo "                                                             CTRL-C чтобы выйти
===============================================================================

Перед  тем,  как  мы  начнём,  предупрежу.  Вы  вольны  менять конфигурацию как
вздумается, но если вы не понимаете что за что отвечает, то лучше соглашаться с
предустановленными  параметрами,  выбранными  вами  до  этого. Простым решением
будет    просто    протыкать    кнопку    'ENTER'    до   окончания   операции.

===============================================================================


Если    вы    прочитали    это    предупреждение    напишите    'продолжить'...
"

while true; do
    read input
    if [ "$input" = "продолжить" ]; then
        break;
    fi
done

        bash /opt/zapret/install_bin.sh
        bash /opt/zapret/install_prereq.sh
        bash /opt/zapret/install_easy.sh
