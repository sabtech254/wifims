<?php
/**
 *  PHP Mikrotik Billing (https://github.com/sabtech254/wifims/)
 * 
 **/

if(Admin::getID()){
    r2(U.'dashboard');
}if(User::getID()){
    r2(U.'home');
}else{
    r2(U.'login');
}
