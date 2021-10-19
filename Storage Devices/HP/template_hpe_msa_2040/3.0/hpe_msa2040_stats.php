<?php

 /*=== CONFIG ===*/
$username = 'manage';
$password = '!manage';
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
$curl = curl_init() or exit('failed to initialize');
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

    /*=== SYSTEM ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/system");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "system"){
            $health_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
            }
            $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.storage.health" "'.$health_numeric.'"'."\n";
        }
    }

    /*=== DISKS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/disks");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "drives"){
            $name = '';
            $architecture = '';
            $health_numeric = '';
            $led_status_numeric = '';
            $status = '';
            $temperature_numeric = '';
            $temperature_status_numeric = '';
            $ssd_life_left_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $name = $property->__toString();
                }
                if ($property['name'] == 'architecture-numeric') {
                    $architecture = $property->__toString();
                }
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
                if ($property['name'] == 'led-status-numeric') {
                    $led_status_numeric = $property->__toString();
                }
                if ($property['name'] == 'status') {
                    $status = $property->__toString();
                }
                if ($property['name'] == 'temperature-numeric') {
                    $temperature_numeric = $property->__toString();
                }
                if ($property['name'] == 'temperature-status-numeric') {
                    $temperature_status_numeric = $property->__toString();
                }
                if ($property['name'] == 'ssd-life-left-numeric') {
                    $ssd_life_left_numeric = $property->__toString();
                }

            }
            if (($name != '')&&($architecture != '')) {
                $dtype = 'hdd';
                if ($architecture == "0") {
                    $dtype = 'ssd';
                    $exec .= $ssd_life_left_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.'.$dtype.'.liferemain['.$name.']" "'.$ssd_life_left_numeric.'"'."\n";
                }
                $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.'.$dtype.'.health['.$name.']" "'.$health_numeric.'"'."\n";
                $exec .= $led_status_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.'.$dtype.'.ledstatus['.$name.']" "'.$led_status_numeric.'"'."\n";
                $exec .= $status=='' ? '' : '"'.$MSA['name'].'" "msa.'.$dtype.'.status['.$name.']" "'.$status.'"'."\n";
                $exec .= $temperature_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.'.$dtype.'.temperature['.$name.']" "'.$temperature_numeric.'"'."\n";
                $exec .= $temperature_status_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.'.$dtype.'.temperaturestatus['.$name.']" "'.$temperature_status_numeric.'"'."\n";
            }
        }
    }

    /*=== FRUS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/frus");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    //var_dump($xml);
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "enclosure-sku"){
            $partnumber = '';
            $sku_serialnumber = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'sku-partnumber') {
                    $partnumber = $property->__toString();
                }
                if ($property['name'] == 'sku_serialnumber') {
                    $sku_serialnumber = $property->__toString();
                }
            }
            $exec .= $partnumber=='' ? '' : '"'.$MSA['name'].'" "msa.part.number" "'.$partnumber.'"'."\n";
            $exec .= $sku_serialnumber=='' ? '' : '"'.$MSA['name'].'" "msa.serial.number" "'.$sku_serialnumber.'"'."\n";
        }
        if ($object["basetype"] == "enclosure-fru"){
            $id = '';
            $status = '';
            $location = '';
            $encosure = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'name') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'fru-status') {
                    $status = $property->__toString();
                }
                if ($property['name'] == 'fru-location') {
                    $location = $property->__toString();
                }
                if ($property['name'] == 'enclosure-id') {
                    $encosure = $property->__toString();
                }
            }
            if (($id != '')&&($encosure != '')&&($location != '')) {
                $id = $id."_".$encosure."_".str_replace(" ","_",$location);
                $exec .= $status=='' ? '' : '"'.$MSA['name'].'" "msa.fru.status['.$id.']" "'.$status.'"'."\n";
            }
        }
    }

    /*=== CONTROLLERS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/controllers");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "controllers"){
            $id = '';
            $status = '';
            $health_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $id = strtolower($property->__toString());
                }
                if ($property['name'] == 'status') {
                    $status = $property->__toString();
                }
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.controller.health['.$id.']" "'.$health_numeric.'"'."\n";
                $exec .= $status=='' ? '' : '"'.$MSA['name'].'" "msa.controller.status['.$id.']" "'.$status.'"'."\n";
            }
        }
    }

    /*=== ENCLOSURES ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/enclosures");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "enclosures"){
            $id = '';
            $status = '';
            $health_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'enclosure-id') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'status') {
                    $status = $property->__toString();
                }
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.enclosure.health['.$id.']" "'.$health_numeric.'"'."\n";
                $exec .= $status=='' ? '' : '"'.$MSA['name'].'" "msa.enclosure.status['.$id.']" "'.$status.'"'."\n";
            }
        }
    }

    /*=== FANS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/fans");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "fan"){
            $id = '';
            $status = '';
            $health_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'status') {
                    $status = $property->__toString();
                }
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.fan.health['.$id.']" "'.$health_numeric.'"'."\n";
                $exec .= $status=='' ? '' : '"'.$MSA['name'].'" "msa.fan.status['.$id.']" "'.$status.'"'."\n";
            }
          }
    }

    /*=== POOLS ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/pools");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "pools"){
            $id = '';
            $total = '';
            $available = '';
            $health_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'serial-number') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'total-size-numeric') {
                    $total = intval($property->__toString())*512;
                }
                if ($property['name'] == 'total-avail-numeric') {
                    $available = intval($property->__toString())*512;
                }
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $available=='' ? '' : '"'.$MSA['name'].'" "msa.pool.asize['.$id.']" "'.$available.'"'."\n";
                $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.pool.health['.$id.']" "'.$health_numeric.'"'."\n";
                $exec .= $total=='' ? '' : '"'.$MSA['name'].'" "msa.pool.tsize['.$id.']" "'.$total.'"'."\n";
            }
          }
    }

    /*=== VOLUMES ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/volumes");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "volumes"){
            $id = '';
            $total = '';
            $allocated = '';
            $health_numeric = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'serial-number') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'total-size-numeric') {
                    $total = intval($property->__toString())*512;
                }
                if ($property['name'] == 'allocated-size-numeric') {
                    $allocated = intval($property->__toString())*512;
                }
                if ($property['name'] == 'health-numeric') {
                    $health_numeric = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $health_numeric=='' ? '' : '"'.$MSA['name'].'" "msa.volume.health['.$id.']" "'.$health_numeric.'"'."\n";
                $exec .= $allocated=='' ? '' : '"'.$MSA['name'].'" "msa.volume.asize['.$id.']" "'.$allocated.'"'."\n";
                $exec .= $total=='' ? '' : '"'.$MSA['name'].'" "msa.volume.tsize['.$id.']" "'.$total.'"'."\n";
            }
          }
    }

    /*=== VOLUMES PERFORMANCE ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/volume-statistics");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "volume-statistics"){
            $id = '';
            $bps = '';
            $iops = '';
            $ptssd = '';
            $ptsas = '';
            $ptsata = '';
            $data_read = '';
            $data_write = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'serial-number') {
                    $id = $property->__toString();
                }
                if ($property['name'] == 'bytes-per-second-numeric') {
                    $bps = $property->__toString();
                }
                if ($property['name'] == 'iops') {
                    $iops = $property->__toString();
                }
                if ($property['name'] == 'percent-tier-ssd') {
                    $ptssd = $property->__toString();
                }
                if ($property['name'] == 'percent-tier-sas') {
                    $ptsas = $property->__toString();
                }
                if ($property['name'] == 'percent-tier-sata') {
                    $ptsata = $property->__toString();
                }
                if ($property['name'] == 'data-read-numeric') {
                    $data_read = $property->__toString();
                }
                if ($property['name'] == 'data-written-numeric') {
                    $data_write = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $bps=='' ? '' : '"'.$MSA['name'].'" "msa.volume.bps['.$id.']" "'.$bps.'"'."\n";
                $exec .= $data_read=='' ? '' : '"'.$MSA['name'].'" "msa.volume.dataread['.$id.']" "'.$data_read.'"'."\n";
                $exec .= $data_write=='' ? '' : '"'.$MSA['name'].'" "msa.volume.datawrite['.$id.']" "'.$data_write.'"'."\n";
                $exec .= $iops=='' ? '' : '"'.$MSA['name'].'" "msa.volume.iops['.$id.']" "'.$iops.'"'."\n";
                $exec .= $ptsas=='' ? '' : '"'.$MSA['name'].'" "msa.volume.ptsas['.$id.']" "'.$ptsas.'"'."\n";
                $exec .= $ptsata=='' ? '' : '"'.$MSA['name'].'" "msa.volume.ptsata['.$id.']" "'.$ptsata.'"'."\n";
                $exec .= $ptssd=='' ? '' : '"'.$MSA['name'].'" "msa.volume.ptssd['.$id.']" "'.$ptssd.'"'."\n";
            }
          }
    }

    /*=== CONTROLLER PERFORMANCE ===*/
    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/show/controller-statistics");
    $response = curl_exec($curl);
    try{
        $xml = new SimpleXMLElement($response);
    } catch (Exception $e){
        continue;
    }
    foreach ($xml->OBJECT as $object) {
        if ($object["basetype"] == "controller-statistics"){
            $id = '';
            $cpu_load = '';
            $write_cache_used = '';
            $bps = '';
            $iops = '';
            foreach ($object->PROPERTY as $property) {
                if ($property['name'] == 'durable-id') {
                    $id = strtolower($property->__toString());
                }
                if ($property['name'] == 'cpu-load') {
                    $cpu_load = $property->__toString();
                }
                if ($property['name'] == 'write-cache-used') {
                    $write_cache_used = $property->__toString();
                }
                if ($property['name'] == 'bytes-per-second-numeric') {
                    $bps = $property->__toString();
                }
                if ($property['name'] == 'iops') {
                    $iops = $property->__toString();
                }
            }
            if ($id != '') {
                $exec .= $cpu_load=='' ? '' : '"'.$MSA['name'].'" "msa.controller.cpuload['.$id.']" "'.$cpu_load.'"'."\n";
                $exec .= $iops=='' ? '' : '"'.$MSA['name'].'" "msa.controller.iops['.$id.']" "'.$iops.'"'."\n";
                $exec .= $write_cache_used=='' ? '' : '"'.$MSA['name'].'" "msa.controller.wrcache['.$id.']" "'.$write_cache_used.'"'."\n";
                $exec .= $bps=='' ? '' : '"'.$MSA['name'].'" "msa.controller.bps['.$id.']" "'.$bps.'"'."\n";
            }
          }
    }

    curl_setopt($curl, CURLOPT_URL, "https://".$ip."/api/exit");
    $response = curl_exec($curl);
}
curl_close($curl);
$exec = "echo '".trim($exec)."' | ".$zabbix_sender;
var_dump($exec);
exec($exec,$result);
var_dump($result);

?>