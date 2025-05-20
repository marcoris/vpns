#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

show_menu() {
    echo -e "${CYAN}Please choose Plattform:${NC}"
    echo -e "${YELLOW}1) HTB Academy${NC}"
    echo -e "${YELLOW}2) HTB Labs${NC}"
    echo -e "${YELLOW}3) HTB Release Arena${NC}"
    echo -e "${YELLOW}4) HTB Season 7${NC}"
    echo -e "${YELLOW}5) PWNED LABS${NC}"
    echo -e "${YELLOW}6) THM Boxes${NC}"
    echo -e "${YELLOW}0) Exit${NC}"
}

handle_choice() {
    case $1 in
        1)
            echo -e "${GREEN}HTB Academy chosen!${NC}"
            echo -e "${CYAN}Starting OpenVPN with the configuration file...${NC}"
            sudo openvpn /home/kali/Desktop/vpns/htb_academy_SirOcram.ovpn
            ;;
        2)
            echo -e "${GREEN}HTB Labs chosen!${NC}"
            echo -e "${CYAN}Starting OpenVPN with the configuration file...${NC}"
            sudo openvpn /home/kali/Desktop/vpns/htb_lab_SirOcram.ovpn
            ;;
        3)
            echo -e "${GREEN}HTB Release Arena chosen!${NC}"
            echo -e "${CYAN}Starting OpenVPN with the configuration file...${NC}"
            sudo openvpn /home/kali/Desktop/vpns/htb_release_arena_SirOcram.ovpn
            ;;
        4)
            echo -e "${GREEN}HTB Season 7 chosen!${NC}"
            echo -e "${CYAN}Starting OpenVPN with the configuration file...${NC}"
            sudo openvpn /home/kali/Desktop/vpns/htb_season7_SirOcram.ovpn
            ;;
        5)
            echo -e "${GREEN}PWNED LABS chosen!${NC}"
            echo -e "${CYAN}Starting OpenVPN with the configuration file...${NC}"
            sudo openvpn /home/kali/Desktop/vpns/pwned_labs_SirOcram.ovpn
            ;;
        6)
            echo -e "${GREEN}THM Boxes chosen!${NC}"
            echo -e "${CYAN}Starting OpenVPN with the configuration file...${NC}"
            sudo openvpn /home/kali/Desktop/vpns/thm_vip_0xFF00FF.ovpn
            ;;
        0)
            echo -e "${RED}Exit chosen. Good Bye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown action. Please try again.${NC}"
            ;;
    esac
}

while true; do
    show_menu
    read -rp "Your choice: " choice
    handle_choice "$choice"
    echo -e "${CYAN}---------------------------------${NC}"
done
