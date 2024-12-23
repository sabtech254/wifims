<?php
/**
 *  PHP Mikrotik Billing (https://github.com/sabtech254/wifims/)
 * 
 **/

if(function_exists($routes[1])){
    call_user_func($routes[1]);
}else{
    r2(U.'dashboard', 'e', 'Function not found');
}