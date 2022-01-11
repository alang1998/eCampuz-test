<?php

$input = 7;
$divider = 3;

$result = $input / $divider;

$output = explode('.', $result);

echo $output[0];