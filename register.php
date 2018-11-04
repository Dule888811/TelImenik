<?php

include_once 'core/init.php';


    $required_fields = array('password','name','email','passwordA');
    foreach($required_fields as $field){
        if(!isset($_POST[$field]) || empty(trim($_POST[$field]))){
            switch($field){
                case 'password': $f = 'password'; break;
                case 'name': $f = 'name'; break;
                case 'email': $f = 'E-mail '; break;
            }
            $errors[] = 'Field <b>' . $f . '</b> must be set.';
        }else{
            $$field = trim($_POST[$field]);
        }
    }
    if(isset($email)){
        if(User::email_exists($email)) $errors[] = 'We have youser with that e-mail.';
        if(!filter_var($email, FILTER_VALIDATE_EMAIL)) $errors[] = 'Eneter valid e-mail.';
    }
    if(isset($password) && isset($passwordA)){
     if(strlen($password) < 3) $errors[] = 'Password cnat have less the 3 char.';
     if($password !== $passwordA) $errors[] = 'Password dont maches';
    }
    if(count($errors) == 0){
        User::register_new_user($name, $email, $password);
        header('Location: index.php');
    }

if(!empty($errors)){
    ?>
<h1>Faild!</h1>
<ul><li><?php echo implode('</li><li>', $errors) ?></li></ul>
    <?php
}else{
    //   header('Location: index.php');
};
?>