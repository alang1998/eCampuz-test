<?php


$x = 50;

for ($i=1; $i <= $x; $i++) { 
    if ($i % 3 == 0 && $i % 5 == 0) {
        echo "FooBar <br>";
    } else if ($i % 3 == 0) {
        echo "Foo <br>";
    } else if ($i % 5 == 0){
        echo "Bar <br>";
    } else {
        echo $i."<br>";
    }
}