$server=$args[0]
$port=$args[1]
$Ping = New-Object Net.Sockets.TcpClient 
try
{$Ping.Connect($server, $port)}
catch
{}
$Ping.Connected 