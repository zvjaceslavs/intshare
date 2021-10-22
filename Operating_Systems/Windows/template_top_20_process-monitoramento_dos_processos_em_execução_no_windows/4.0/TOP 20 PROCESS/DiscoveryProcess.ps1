##################################################################
# Script: DiscoveryProcess.ps1                                   #
# Author: Danilo Barros de Medeiros                              #
# Contact: Email: danilo@provtel.com.br                          #
# Date: 2018-10-18                                               #
#                                                                #
# Script: Item.cpu.ps1, Discovery.process.ps1, item.cpu.ps1      #
# Author: Magno Monte Cerqueira                                  #
# Contact: magno.cerqueira@2mti.com.br                           #
# Date: 2019-02-07                                               #
#                                                                #
# Description: Monitoramento de processos do Windows             #
# coleta um total de 20 processos com maior tempo de CPU         #
#                                                                #
# Consultoria Zabbix           2mti soluções e serviços          # 
# http://www.provtel.com.br    http://treinamentos.2mti.com.br   #
##################################################################
#
# Versao 0.1
#
# NOME
#   DiscoveryProcess.ps1
#
# DESCRICAO
#   Efetua o a coleta de dados referente a processos em execução no sistema operacional Windows.
#
#
#
# REQUISITOS
#    Validado para Powershell Versão 5.0 - Não foi testado em versões anteriores
#
#
# Controle de Versão
#  
#  Magno Monte Cerqueira - Idealizador do projeto de monitoramento dos processo dos windows.
# 
#  Danilo Barros     21/01/2019 - Criada funcao discovery para elencar os 20 primeiros processos com 
#                                 maiores tempo de atividade de CPU em conjunto com a motagem do JSON para envio dos dados coletados para o zabbix.
#  
#     
#                             
#  Danilo Barros     24/01/2019 - Criada funcao para coletar tempo de CPU e consumo de memória de cada processo descoberto.
#                                
#  Danilo Barros     01/02/2019 - Primeira versão publicada.
#
#  Danilo Barros     07/02/2019 - Função Help para documentação do projeto.
# 
#  Magno Monte Cerqueira     07/02/2019 - Função coleta Porcentagem de CPU via get-wmi.
#
#  Danilo Barros     09/02/2019 - Desenvolvimento do instalador zabbix_agent-4.0.1_installer_Top20Process.exe com toda integração dos scripts e userparameter
#
# NOTA
# Formas de execução do script 
#
# DiscoveryProcess.ps1
#
#
# 1 - Abra o Powershell como Administrador e execute o comando Set-ExecutionPolicy Unrestricted e confirme;
# 2 - Caso já tenha feito o procedimento acima no Host, desconsidere e pule para o próximo requerimento; 
# 3 - Inserir o arquivo DiscoveryProcess.ps1 no diretorio de sua escolha;
# 4 - Abra o powershell e navegue até o diretorio do script; 
#
# TESTES
#
# Parâmetro DISCOVERY - Realiza o discovery dos processos e monta o JSON.
#
# EX:    .\DiscoveryProcess.ps1 DISCOVERY
#
#
# Parâmetro PROCESSCPU + ID - coleta os 20 processos Top/Down com alto tempo de CPU.
#
#
# EX:    .\DiscoveryProcess.ps1 PROCESSCPU 1112
#
#
# Parâmetro PROCESSMEMORY + ID - coleta os 20 processos Top/Down com alto consumo de Memória.
#
#
# BACKLOG
#
# 
# 2 - Coletar Total de Memória  e CPU por Usuário conectado via TS
#  
#
# ARQUIVOS QUE COMPÕE ESSE PROJETO
#
# DiscoveryProcess.ps1
# Template_Monitoramento_Processo_Windows.xml
# discovery.Process.conf
# LEIA-ME.pdf
# zabbix_agent-4.0.1_installer_Top20Process.zip
#
###############################################################################################

# Inicio do Script DiscoveryProvess.ps1;

# Para entrar na condição de Discovery o script aguarda uma passagem de parâmetros;

Param(
  [string]$processo,
  [string]$2
)

# (Se Parâmetro igual DISCOVERY - Execute);

if ( $processo -eq 'DISCOVERY' ) 
{

$line = Get-Process |Sort-Object -Property CPU | Select-Object -Last 20
$compara = 1
write-host "{"
write-host " `"data`":[`n"

# Montagem do JSON com dois itens.

foreach ($cpu in Get-Process -Id $line.Id) {
    
     if ($compara -ge $cpu.length) {
     
 $JSON = "{ `"{#NAME}`":`"" + $cpu.Name + "`",`"{#PID}`":`"" + $cpu.Id + "`"},"
           
           write-host $JSON
}
}

# Necessario a inserção de uma linha ao final para fechar o JSON.

Write-Host '{ "{#NAME}":"filtro","{#PID}":"00000"}'
write-host
write-host " ]"
write-host "}"
}


#FUNÇÃO PARA COLETAR TEMPO DE CPU DO PROCESSO

if ( $processo -eq 'PROCESSCPU' )
{
$execute = Get-Process | Where-Object { $_.Id -eq $2 } | Select-Object CPU |select-object -ExpandProperty CPU

foreach ($cpuprocess in $execute)
{
 
# Estrutura de validação caso coleta vazia
 
 if ($cpuprocess -ne $null)
 {
 $multi = $cpuprocess -replace ",[0-9]+",''
  Write-Host $multi
 } 
 else
 {
 $out = $cpuprocess.length
 }

}
}

#FUNÇÃO PARA COLETAR UTILIZACAO DE MEMÓRIA DO PROCESSO

if ( $processo -eq 'PROCESSMEMORY' )
{
Get-Process | Where-Object { $_.Id -eq $2 } | Select-Object WS |select-object -ExpandProperty WS
}


#FUNÇÃO PARA COLETAR PORCENTAGEM CPU UTILIZADA

if ( $processo -eq 'CPUPERCENT' )
{

(get-wmiobject Win32_PerfFormattedData_PerfProc_Process | ? { $_.IDProcess -eq $2 } | Select).PercentProcessorTime

}

##################################################################
# Script: DiscoveryProcess.ps1                                   #
# Author: Danilo Barros de Medeiros                              #
# Contact: Email: danilo@provtel.com.br                          #
# Date: 2018-10-18                                               #
#                                                                #
# Script: Item.cpu.ps1, Discovery.process.ps1, item.cpu.ps1      #
# Author: Magno Monte Cerqueira                                  #
# Contact: magno.cerqueira@2mti.com.br                           #
# Date: 2019-02-07                                               #
#                                                                #
# Description: Monitoramento de processos do Windows             #
# coleta um total de 20 processos com maior tempo de CPU         #
#                                                                #
# Consultoria Zabbix           2mti soluções e serviços          # 
# http://www.provtel.com.br    http://treinamentos.2mti.com.br   #
##################################################################