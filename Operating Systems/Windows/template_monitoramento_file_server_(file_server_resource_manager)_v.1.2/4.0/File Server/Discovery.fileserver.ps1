##################################################################
# Script: Discovery.fileserver.ps1                               #
# Author: Danilo Barros de Medeiros                              #
# Contact: Email: danilo@provtel.com.br                          #
# Date: 2018-02-16                                               #
#                                                                #
# Script: Discovery.fileserver.ps1                               #
# Author: Magno Monte Cerqueira                                  #
# Contact: magno.cerqueira@2mti.com.br                           #
# Date: 2019-02-16                                               #
#                                                                #
# Description: Monitoramento do Servidor de arquivos             #
#                                                                #
# Consultoria Zabbix           2mti soluções e serviços          # 
# http://www.provtel.com.br    http://treinamentos.2mti.com.br   #
##################################################################
#
# Versao 0.1
#
# NOME
#   Discovery.fileserver.ps1
#
# DESCRICAO
#   Efetua o a coleta de dados referente as pastas de rede.
#
#
#
# REQUISITOS
#    Validado para Powershell Versão 5.0 - Não foi testado em versões anteriores
#
#
# Controle de Versão
#  
#  Magno Monte Cerqueira - Idealizador do projeto de monitoramento servidor de arquivos.
# 
#  Danilo Barros     16/02/2019 - Criada funcao discovery para descobrir as pastas de rede em 
#                                  conjunto com a motagem do JSON para envio dos dados coletados para o zabbix.
#  
# NOTA
# Formas de execução do script 
#
# Discovery.fileserver.ps1
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
# EX:    .\Discovery.fileserver.ps1 DISCOVERY
#
#
# Parâmetro COTA + PASTA - coleta a cota da pasta monitorada.
#
#
# EX:    .\Discovery.fileserver.ps1 COTA TI
#
#
#Parâmetro USADO + PASTA - coleta o espaco usado da pasta.
#
#
# EX:    .\Discovery.fileserver.ps1 USADO TI
#
#
#Parâmetro LOCAL + PASTA - coleta o local de armazenamento da pasta.
#
#
# EX:    .\Discovery.fileserver.ps1 LOCAL TI
#
#
# 
#  
#
# ARQUIVOS QUE COMPÕE ESSE PROJETO
#
# Discovery.fileserver.ps1
# Template_Monitoramento_FILE_SERVER_ZABBIX_4.0_VERSAO-0.1.xml
# discovery.filesever.conf
# LEIA-ME.pdf
# zabbix_agent-4.0.1_installer_Top20Process.zip
#
###############################################################################################

# Inicio do Script Discovery.fileserver.ps1;

# Para entrar na condição de Discovery o script aguarda uma passagem de parâmetros;

Param(
  [string]$DESCOBERTA,
  [string]$PASTA
)

# Descoberta em LLD
if ( $DESCOBERTA -eq 'DISCOVERY' )
{
$comando = (Get-FsrmQuota | select Description)
$2mti = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($listao in $comando)
{
    if ($2mti -lt $comando.Count)
    {
        $line= "{ `"{#PASTASREDE}`":`"" + $listao.Description + "`" },"
        write-host $line
    }
    elseif ($2mti -ge $comando.Count)
    {
    $line= "{ `"{#PASTASREDE}`":`"" + $listao.Description + "`" }"
    write-host $line
    }
    $2mti++;
}
write-host
write-host " ]"
write-host "}"
}

#FUNÇÃO PARA COLETAR TAMANHO DA PASTA 
if ($DESCOBERTA -eq 'TAMANHO'){

Get-FsrmQuota | where {$_.Description -ccontains "$PASTA"} | select-object -ExpandProperty Size

}

#FUNÇÃO PARA COLETAR ESPACO USADO DA PASTA 
if ($DESCOBERTA -eq 'USADO'){

Get-FsrmQuota | Where-Object { $_.Description  -eq "$PASTA" } | select-object -ExpandProperty Usage

}

#FUNÇÃO PARA COLETAR COTA INSERIDA DA PASTA 
if ($DESCOBERTA -eq 'COTA'){

Get-FsrmQuota | Where-Object { $_.Description  -eq "$PASTA" } | select-object -ExpandProperty Template

}

#FUNÇÃO PARA COLETAR O LOCAL DE HOSPEDAGEM DA PASTA 
if ($DESCOBERTA -eq 'LOCAL'){

Get-FsrmQuota | Where-Object { $_.Description  -eq "$PASTA" } | select-object -ExpandProperty Path

}

#FUNÇÃO PARA COLETAR A QUANTIDADE DE ARQUIVOS NA PASTA 
if ($DESCOBERTA -eq 'QUANTIDADE'){

$executa = Get-FsrmQuota | Where-Object { $_.Description  -eq "$PASTA" } | select-object -ExpandProperty Path
}
foreach ($executa in $executa)
{

Get-ChildItem $executa -Recurse  | Where-Object {!$_.PSIsContainer} | Measure-Object | select-object -ExpandProperty Count

}

##################################################################
# Script: Discovery.fileserver.ps1                               #
# Author: Danilo Barros de Medeiros                              #
# Contact: Email: danilo@provtel.com.br                          #
# Date: 2018-02-16                                               #
#                                                                #
# Script: Monitoramento servidor de arquivos                     #
# Author: Magno Monte Cerqueira                                  #
# Contact: magno.cerqueira@2mti.com.br                           #
# Date: 2019-02-16                                               #
#                                                                #
# Description: Monitoramento do servidor de arquivos             #
#                                                                #
# Consultoria Zabbix           2mti soluções e serviços          # 
# http://www.provtel.com.br    http://treinamentos.2mti.com.br   #
##################################################################