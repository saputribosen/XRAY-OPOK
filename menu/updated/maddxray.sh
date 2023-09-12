#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
OK="${GREEN}[OK]${NC}"
Error="${RED}[Mistake]${NC}"
BRED="\e[41m"
BBLUE="\e[38;5;21m"
# ==========================================
#information
OK = "$ {
  Green
}[OK]$ {
  Font
}"
Error = "$ {
  Red
}[Mistake]$ {
  Font
}"
clear
echo -e ""
echo -e "$BLUE  ╔═══════════════════════════════════════════════════════════════════════╗$NC"
echo -e "$BLUE  ║$NC $BRED                          VMESS-MultiPort                            $BLUE ║"
echo -e "$BLUE  ╚═══════════════════════════════════════════════════════════════════════╝$NC"
echo -e "$BLUE  ╔═══════════════════════════════════╦═══════════════════════════════════╗"
echo -e "$BLUE  ║ $ORANGE     ✶ VMESS WS/GRPC ✶    $BLUE       ║  $ORANGE      ✶ VMESS WS/GRPC ✶      $BLUE   ║"
echo -e "$BLUE  ║-----------------------------------║-----------------------------------║"
echo -e "$BLUE  ╠➣$NC 1. Create Account Vmess Tls  $BLUE    ╠➣$NC 4. Delete Account Vmess       $BLUE   ║ "
echo -e "$BLUE  ╠➣$NC 2. Create Account Vmess NTls $BLUE    ╠➣$NC 5. Rennew Account Vmess       $BLUE   ║ "
echo -e "$BLUE  ╠➣$NC 3. Create Account Vmess gRPC $BLUE    ╠➣$NC 6. Detail Account Vmess       $BLUE   ║ "
echo -e "$BLUE  ╠➣$NC                              $BLUE    ╠➣$NC                               $BLUE   ║ "
echo -e "$BLUE  ║-----------------------------------║-----------------------------------║"
echo -e "$BLUE  ╚═══════════════════════════════════╩═══════════════════════════════════╝$NC"
echo -e "$BLUE  ╔═══════════════════════════════════╦═══════════════════════════════════╗"
echo -e "$BLUE  ║                                 $BLUE  ╠➣$NC 0. Back To Menu               $BLUE   ║ "
echo -e "$BLUE  ║-----------------------------------║-----------------------------------║"
echo -e "$BLUE  ╚═══════════════════════════════════╩═══════════════════════════════════╝$NC"

read -p " ➣ Select From Options [ 0 - 6 ]:  " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
addvmessntls
;;
3)
addvmessgrpc
;;
4)
dellvmess
;;
5)
rennewvmess
;;
6)
viewewvmess
;;
0)
menu
;;
*)
clear
bash menu
;;
esac
#
