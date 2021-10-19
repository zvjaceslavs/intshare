# Monitoramento de USO DE CPU JBOSS

## Overview

1- Instalar o pacote BC (Calculadora) no servidor jboss


2- Inserir o script abaixo no servidor jboss


3- Inserir o Nome do processo no script em destaque em negrito 


4- salvar no local de sua preferencia no servidor jboss


5- inserir uma linha no UserParameter no agente do zabbix servidor jboss


UserParameter=nome da chave, /caminho do scrpit 


Depois reinicie o agente zabbix


6- Trocar a chave do item pelo nome da chave do UserParameter


7- Criar a trigger conforme sua necessidade.


Obs.: Vale para qualquer processo . Basta mudar o nome no script para buscar e atualizar os itens e UserParameter. 


 sei que não é a melhor forma mas esta ai quem precisar pode usar e adaptar. Bem simples o scrpit.


-----------------------------------------


SCRPIT


 


#!/bin/bash


#consumo de CPU Desenvolvido por Thiago Fernandes Surette


#CONSULTANDO O PID


V=$(ps aux | grep "**Nome do Processo**" | grep -v grep | awk '{print $2}')


#CALCULANDO O USO DA CPU


nPid="$V";


nTimes=10; # customize it


delay=0.1; # customize it


strCalc=`top -d $delay -b -n $nTimes -p $nPid \


 |grep $nPid \


 |sed -r -e "s;\s\s*; ;g" -e "s;^ *;;" \


 |cut -d' ' -f9 \


 |tr '\n' '+' \


 |sed -r -e "s;(.*)[+]$;\1;" -e "s/.*/scale=2;(&)\/$nTimes/"`;


 nPercCpu=`echo "$strCalc" |bc -l`


#Aredonando Valor


echo $nPercCpu | awk '{printf "%.f\n" ,$v}'


 #########################################


Link de referência:https://qastack.com.br/unix/554/how-to-monitor-cpu-memory-usage-of-a-single-process


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

## Author

Thiago Surette

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|USO DE CPU OPENCMS|<p>-</p>|`Zabbix agent`|cpuopencms_1<p>Update: 60s</p>|
|USO DE CPU TOMEE_INTRA_1|<p>-</p>|`Zabbix agent`|cputomee<p>Update: 60s</p>|
## Triggers

There are no triggers in this template.

