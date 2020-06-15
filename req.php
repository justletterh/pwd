<?php
function check($s,$div){
    $len=strlen($s);
    $max=5;
    $tc=0;
    if ($len>=8){
        echo "[x] at least 8 chars long (it's $len chars long)\n";
        $tc=$tc+1;
    } else{
        echo "[ ] at least 8 chars long (it's $len chars long)\n";
    }
    $count=0;
    $l=str_split($s);
    foreach($l as $char){
        if (is_numeric($char)==true){
            $count=$count+1;
        }
    }
    if ($count>=3){
        echo "[x] has at least 3 numbers (it has $count)\n";
        $tc=$tc+1;
    } else{
        echo "[ ] has at least 3 numbers (it has $count)\n";
    }
    if (strtolower($s)!=$s){
        echo "[x] has at least one uppercase letter\n";
        $tc=$tc+1;
    } else{
        echo "[ ] has at least one uppercase letter\n";
    }
    $count=0;
    $l=str_split($s);
    foreach($l as $char){
        if (ctype_alpha($char)==true){
            $count=$count+1;
        }
    }
    if ($count>=3) {
        echo "[x] has at least 3 letters (it has $count)\n";
        $tc=$tc+1;
    } else{
        echo "[ ] has at least 3 letters (it has $count)\n";
    }
    $count=0;
    $l=str_split($s);
    foreach($l as $char){
        if (ctype_alpha($char)==false && is_numeric($char)==false){
            $count=$count+1;
        }
    }
    if ($count>0){
        echo "[x] it has at least one symbol (it has $count)\n";
        $tc=$tc+1;
    } else{
        echo "[ ] it has at least one symbol (it has $count)\n";
    }
    echo "$div\nyour password meets $tc/$max of the requirements\n$div\n";
    if ($tc>=$max-1){
        echo "congrats!!! you passed my test\n";
        if ($tc==$max){
            echo "you get a gold star!!!\n";
        }
    } elseif ($tc<=$max-3){
        echo "is that even a password???\n";
    } else{
        echo "i guess it's okay...\n";
    }
}
function main() {
    $div=str_repeat('-',50);
    echo "$div\n";
    echo "What is the password you'd like to check?:\n";
    usleep(100000);
    $pwd=readline();
    echo("$div\n");
    check($pwd,$div);
    echo "$div\n";
}
main();
?>