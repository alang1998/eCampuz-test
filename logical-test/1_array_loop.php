<?php

$aplikasi[1] = 'gtAkademik';
$aplikasi[2] = 'gtFinansi';
$aplikasi[3] = 'gtPerizinan';
$aplikasi[4] = 'eCampuz';
$aplikasi[5] = 'eOviz';

$a = 1;

while ($a <= count($aplikasi)) {
    echo $aplikasi[$a] . "<br>";
    $a++;
}