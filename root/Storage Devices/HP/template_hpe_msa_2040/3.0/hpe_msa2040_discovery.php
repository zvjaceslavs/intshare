<?php

 /*=== CONFIG ===*/
$username = 'manage';
$password = '!manage';

/*
ip1 - MSA Controller A
ip2 - MSA Controller B
name - system name on zabbix
*/
$MSAs = array(
            array('ip1' => '192.168.99.94', 'ip2' => '192.168.99.95', 'name' => 'MSA2040_1'),
            array('ip1' => '192.168.99.138','ip2' => '192.168.99.139','name' => 'MSA2040_2'),
            array('ip1' => '192.168.99.96', 'ip2' => '192.168.99.97', 'name' => 'MSA2040_3'),
            array('ip1' => '192.168.99.103','ip2' => '192.168.99.104','name' => 'MSA2040_4')
            );
$zabbix_sender = '/usr/local/bin/zabbix_sender -z 127.0.0.1 -p 10051 -i -';
/*==============*/


$md5_hash = md5($username."_".$password);
$sessionKey = '';
$exec = '';
$curl = curl_init() or exit('failed to initialize curl');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($curl, CURLOPT_SSLVERSION,6);
curl_setopt($curl, CURLOPT_CONNECTTIMEOUT ,10);
curl_setopt($curl, CURLOPT_TIMEOUT, 10);

foreach ($MSAs as $MSA) {
    $ip = $MSA['ip1'];
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/login/".$md5_hash);
    $response = curl_exec($curl);
    if ($response === false) {
        echo $MSA['name'].' '.$MSA['ip1']." not accessable\n";
        $ip = $MSA['ip2'];
        curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/login/".$md5_hash);
        $response = curl_exec($curl);
        if ($response === false) {
            continue;
        }
    }
    echo $MSA['name'].' '.$ip." connected\n";
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT->PROPERTY as $property) {
        if ($property['name'] == 'return-code') {
            $res = $property->__toString();
        }
        if ($property['name'] == 'response') {
            $sessionKey = $property->__toString();
        }
    }
    if (($res != "1") || ($sessionKey == '')) {
        continue;
    }
    curl_setopt($curl, CURLOPT_HTTPHEADER, array(
                                            'sessionKey: '.$sessionKey,
                                            'dataType: api-embed-brief'
                                            ));

    /*=== DISKS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/disks");
    $response = curl_exec($curl);
    //echo htmlspecialchars(print_r($response,true));
    $jsonSSD = array("data" => array());
    $jsonHDD = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "drives"){
            $name = '';
            $architecture = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $name = $property->__toString();
                }
                if ($property['name'] == 'architecture-numeric') {
                    $architecture = $property->__toString();
                }
            }
            if (($name != '')&&($architecture != '')) {
                if ($architecture == "0") {
                    $jsonSSD["data"][] = array("{#DISK}" => $name);
                } else {
                    $jsonHDD["data"][] = array("{#DISK}" => $name);
                }
            }
        }
    }
    $jsonHDD = addslashes(json_encode($jsonHDD));
    $jsonSSD = addslashes(json_encode($jsonSSD));

    /*=== FRUS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/frus");
    $response = curl_exec($curl);
    $jsonFRUS = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "enclosure-fru"){
            $id = '';
            $name = '';
            $location = '';
            $encosure = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'name') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'fru-shortname') {
                    $name = $property->__toString();
                }
                if ($property['name'] == 'fru-location') {
                    $location = $property->__toString();
                }
                if ($property['name'] == 'enclosure-id') {
                    $encosure = $property->__toString();
                }
            }
            if (($id != '')&&($name != '')&&($location != '')&&($encosure != '')) {
                $id = $id."_".$encosure."_".str_replace(" ","_",$location);
                $name = $name." Enclosure-".$encosure." ".$location;
                $jsonFRUS["data"][] = array("{#FRUID}" => $id, "{#FRUNAME}" => $name);
            }
        }
    }
    $jsonFRUS = addslashes(json_encode($jsonFRUS));

    /*=== CONTROLLERS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/controllers");
    $response = curl_exec($curl);
    $jsonCTRL = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "controllers"){
            $id = '';
            $name = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $id = strtolower($property->__toString());
                }
                if ($property['name'] == 'controller-id') {
                    $name = $property->__toString();
                }
            }
            if (($id != '')&&($name != '')) {
                $jsonCTRL["data"][] = array("{#CTRLID}" => $id, "{#CTRLNAME}" => "Controller ".$name);
            }
        }
    }
    $jsonCTRL = addslashes(json_encode($jsonCTRL));

    /*=== ENCLOSURES ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/enclosures");
    $response = curl_exec($curl);
    $jsonENCL = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "enclosures"){
            $id = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'enclosure-id') {
                    $id = $property->__toString();
                }
            }
            if (($id != '')&&($name != '')) {
                $jsonENCL["data"][] = array("{#ENCLID}" => $id, "{#ENCLNAME}" => "Enclosure ".$id);
            }
        }
    }
    $jsonENCL = addslashes(json_encode($jsonENCL));

    /*=== FANS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/fans");
    $response = curl_exec($curl);
    $jsonFAN = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "fan"){
            $id = '';
            $location = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'location') {
                    $location = $property->__toString();
                }
            }
            if (($id != '')&&($name != '')) {
                $name = "FAN ".$location;
                $jsonFAN["data"][] = array("{#FANID}" => $id, "{#FANNAME}" => $name);
            }
        }
    }
    $jsonFAN = addslashes(json_encode($jsonFAN));

    /*=== POOLS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/pools");
    $response = curl_exec($curl);
    $jsonPOL = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "pools"){
            $id = '';
            $name = '';
            $storage_type = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'serial-number') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'name') {
                    $name = $property->__toString();
                }
                if ($property['name'] == 'storage-type') {
                    $storage_type = $property->__toString();
                }
            }
            if (($id != '')&&($name != '')&&($storage_type != '')) {
                $name = $name." ".$storage_type;
                $jsonPOL["data"][] = array("{#POOLID}" => $id, "{#POOLNAME}" => $name);
            }
        }
    }
    $jsonPOL = addslashes(json_encode($jsonPOL));

    /*=== VOLUMES ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/volumes");
    $response = curl_exec($curl);
    $jsonVOL = array("data" => array());
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "volumes"){
            $id = '';
            $volume_name = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'serial-number') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'volume-name') {
                    $volume_name = $property->__toString();
                }
            }
            if (($id != '')&&($volume_name != '')) {
                $jsonVOL["data"][] = array("{#VOLID}" => $id, "{#VOLNAME}" => $volume_name);
            }
        }
    }
    $jsonVOL = addslashes(json_encode($jsonVOL));


    $exec .= $MSA['name'].' msa.hdd.discovery "'.$jsonHDD.'"'."\n";
    $exec .= $MSA['name'].' msa.ssd.discovery "'.$jsonSSD.'"'."\n";
    $exec .= $MSA['name'].' msa.frus.discovery "'.$jsonFRUS.'"'."\n";
    $exec .= $MSA['name'].' msa.controllers.discovery "'.$jsonCTRL.'"'."\n";
    $exec .= $MSA['name'].' msa.enclosures.discovery "'.$jsonENCL.'"'."\n";
    $exec .= $MSA['name'].' msa.fans.discovery "'.$jsonFAN.'"'."\n";
    $exec .= $MSA['name'].' msa.pools.discovery "'.$jsonPOL.'"'."\n";
    $exec .= $MSA['name'].' msa.volumes.discovery "'.$jsonVOL.'"'."\n";



    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/exit");
    $response = curl_exec($curl);
}
curl_close($curl);
$exec = "echo '".trim($exec)."' | ".$zabbix_sender;
var_dump($exec);   
exec($exec,$result);
var_dump($result);

?>