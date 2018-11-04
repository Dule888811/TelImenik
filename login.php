<?php
include_once 'core/init.php';
if(isset($_POST['email'], $_POST['password'])){
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);
    if(!empty($email) && !empty($password)){
        $pdo = Connect::getInstance();
        $stmtUserCheck = $pdo->prepare("SELECT * FROM search.users WHERE email=? AND password=?");
        $stmtUserCheck->bindValue(1,$email);
        $stmtUserCheck->bindValue(2,$password);
        $stmtUserCheck->execute();
        if($stmtUserCheck->rowCount() == 0){
            echo "Error logging you in";
        }else {
            $user = $stmtUserCheck->fetch(PDO::FETCH_ASSOC);
            $_SESSION['user_id'] = $user['user_id'];
            $_SESSION['name'] = $user['name'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['email'] = $user['email'];
            header ('Location: index.php');
        }
    }else {
        echo "Insert data";
    }
}
