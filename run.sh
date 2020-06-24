#!/bin/bash

clear
PS3='Masukan Pilihan anda: '
options=("Bot Doge" "Bot LTC" "Bot ETH" "Bot BTC" "Setting Betset/settingan" "Membuat akun 999dice baru" "Withdraw" "Deposit" "Keluar")
select opt in "${options[@]}"
do
    case $opt in
        "Bot Doge")
            python doge.py
            ;;
	"Bot LTC")
	    python ltc.py
	    ;;
	"Bot ETH")
            python eth.py
            ;;
	"Bot BTC")
            python btc.py
            ;;
        "Setting Betset/settingan")
            sh sh
            ;;
	"Membuat akun 999dice baru")
	    python reg.py
            ;;
	"Withdraw")
            python with.py
            ;;
	"Deposit")
            python depo.py
            ;;
        "Keluar")
            break
            ;;
        *) echo "Pilihan $REPLY Tidak Tersedia";;
    esac
done
