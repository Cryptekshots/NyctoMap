﻿#!/bin/bash
# -*- coding: utf-8 -*-
#echo -e
#echo -e

 

echo -e     "███╗   ██╗██╗   ██╗ ██████╗████████╗ ██████╗       ███╗   ███╗ █████╗ ██████╗ "
echo -e     "████╗  ██║╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔═══██╗      ████╗ ████║██╔══██╗██╔══██╗"
echo -e     "██╔██╗ ██║ ╚████╔╝ ██║        ██║   ██║   ██║█████╗██╔████╔██║███████║██████╔╝"
echo -e     "██║╚██╗██║  ╚██╔╝  ██║        ██║   ██║   ██║╚════╝██║╚██╔╝██║██╔══██║██╔═══╝ "
echo -e     "██║ ╚████║   ██║   ╚██████╗   ██║   ╚██████╔╝      ██║ ╚═╝ ██║██║  ██║██║     "
echo -e     "╚═╝  ╚═══╝   ╚═╝    ╚═════╝   ╚═╝    ╚═════╝       ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     "
                                                                              

echo -e $blue"          ============[      NyctoMap          ]============="$ENDCOLOR
echo -e $blue"          =              By:     Nycto                      ="$ENDCOLOR
echo -e $blue"          ============[_________________________]============"$ENDCOLOR
echo -e $BLUE"                       Intense scan (-T4 -A -v )             "$ENDCOLOR
echo -e $BLUE"              Intense scan plus UDP (  -sS -sU -T4 -A -v ) "$ENDCOLOR
echo -e $BLUE"          Intense scan, all TCP ports ( -p 1-65535 -T4 -A -v)"$ENDCOLOR
echo -e $BLUE"                Intense scan, no ping ( -T4 -A -v -Pn )     "$ENDCOLOR
echo -e $BLUE"                            Ping scan ( -sn )                 "$ENDCOLOR
echo -e $BLUE"                          Quick scan ( -T4 -F )               "$ENDCOLOR
echo -e $BLUE"           Quick scan plus ( -sV -T4 -O -F --version-light )"$ENDCOLOR
echo -e $BLUE"                 Quick traceroute ( -sn --traceroute )      "$ENDCOLOR
echo -e $BLUE"          Slow comprehensive scan <-Not sure I would use this"$ENDCOLOR
echo -e $BLUE"  (-sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script)"$ENDCOLOR
echo -e $BLUE"              -sS -sV -vv -n -Pn -T5 -p 80,443,8080,8081 -oG  "$ENDCOLOR
echo -e
echo                 "Enter the starting IP such as 191.168.0.1 or 192.168.0.1/24 :"
read FirstIP

echo                                         "COMMANDS :"

read COMMANDS
echo "NAMEFILE :"
read NAMEFILE
nmap $COMMANDS -oG $NAMEFILE $FirstIP 
cat $NAMEFILE grep open >$NAMEFILE.1
cat $NAMEFILE.1 cut - f2 -d" : " cut -f1 -d"(" >$NAMEFILE.2 
cat $NAMEFILE.2
 

