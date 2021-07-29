#by LowLeery, thanks for bash color support :)

#renkler
tp="\e[0m"
blink="\e[5m"
kapalimavimsi="\e[0;36m"
kapalimavininacikolani="\e[96m"
acikyesil="\e[1;32m"
beyaz="\e[1;37m"
kirmizi="\e[1;31m"
sari="\e[1;33m"
mavi="\e[1;34m"
yesil="\e[0;32m"

trap ctrl_c INT
ctrl_c() {
clear
if [[ -f ayarlardogrulandi ]] ; then
    if [[ -f turkcesecti ]] ; then
        echo -e "${kirmizi}Çıkış yapılıyor..."
        sleep 0.4
        exit 0
    else 
        if [[ -f ingilizcesecti ]] ; then
        echo -e "${kirmizi}Exited."
        exit 0
        fi
    fi
else 
    dilsecmeekranihata
fi
}

function dilsecmeekranihata {
        echo -e "${mavi}[EN] ${beyaz}| COMPLETE THE LANGUAGE SCREEN FIRST"
        echo -e "${kirmizi}[TR] ${beyaz}| İLK ÖNCE DİL ÇEKME EKRANINI TAMAMLA"
        sleep 2
        clear
        echo -e ${kirmizi}[T${beyaz}R${kirmizi}] Türkçe
        echo -e ${mavi}[E${beyaz}N${mavi}] English
        echo ""
        echo -ne "${beyaz}↳[${blink}${kapalimavininacikolani}?${tp}]➢ " ; read dilsecme
        case "$dilsecme" in
            tr)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            TR)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            turkce)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            TURKÇE)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            türkçe)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            TÜRKÇE)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            en)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
            EN)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
            english)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
            ENGLISH)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
        esac
}

if [[ -f ayarlardogrulandi ]] ; then
    clear
    if [[ -f turkcesecti ]] ; then # türkçe seçtiyse
        echo -e "${kirmizi}Tamam..."
    elif [[ -f ingilizcesecti ]] ; then # ingilizce seçtiyse
        echo -e "${mavi}Okey..."
    else
    rm ayarlardogrulandi
    fi
    # İSTEDİĞİNİZ İŞLEMİ GİRİN UYGULAMA BAŞLADIKTAN SONRA OLAY BURDA KOPUCAK EĞER DİL SEÇTİYSE!
else
        clear
        echo -e ${kirmizi}[TR] Türkçe
        echo -e ${mavi}[EN] English
        echo ""
        echo -ne "${beyaz}↳[${blink}${kapalimavininacikolani}?${tp}]➢ " ; read dilsecme
        case "$dilsecme" in
            tr)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            TR)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            turkce)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            TURKÇE)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            türkçe)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            TÜRKÇE)
                clear
                echo -e "${beyaz}Dil terhici olarak ${kirmizi}Türkçe${beyaz}'yi tercih ettin."
                touch ayarlardogrulandi && touch turkcesecti
                echo -e "${blink}${sari}Çıkış yapıldı. Uygulamayı yeniden başlat.${tp}"
                exit 1
            ;;
            en)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
            EN)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
            english)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
            ENGLISH)
                clear
                echo -e "${beyaz}You chose ${mavi}English${beyaz} language."
                touch ayarlardogrulandi && touch ingilizcesecti
                echo -e "${blink}${sari}Restart the application.${tp}"
                exit 1
            ;;
        esac
        exit 1
fi