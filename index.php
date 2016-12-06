<?php 
    require_once 'etc/config/website.settings.php';
    require_once 'etc/modules/user/user.lib.php';
    $user = new User();
	$user->start_session();
    if(!empty($_GET['do']) && $_GET['do'] == 'home'){
		$user->logOut(); 
    }
?>
<!DOCTYPE html>
<html>
<head>
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Box</title>
<script src="static/js/jquery.js"></script>
</head>


<body>
<?php 
if($user->isLogin()){ 
    ?>
    <link href="static/css/messenger.css" rel="stylesheet" type="text/css" />    
    <input type="button" id="menu" value="menu" />
    <section id="head"></section>    
    <aside id="sidemenu">
        <div id="user"><a href="user.php?id=<?php echo $user->getUserBy('name'); ?>"><?php echo $user->getUserBy('name'); ?></a></div>
        <input type="button" value="Compose" id="compose" />
        <h3>Message Boxes</h3>
         <ul>
            <li id="inbox">Inbox</li>
            <li id="outbox" >Outbox</li>            
        </ul>
        <footer>
            <?php if($user->isUserLogin('admin')){ ?>
            <a href="admin.php">Add User</a>
            <?php } ?>
            <a href="index.php?do=home">Logout</a>
            <a href="">done by 
                <br/>Rohan Lemon - rsl
                <br/>Stacey Lemon - slm
                <br/>R.J. Lemon - rjl
            </a>
        </footer>
    </aside>
    <section id="main">
        <section id="message_list" >
            <table id="msgtable" >
              <thead>
                <tr>
                  <th id="context_switch">From:</th>
                  <th>Details:</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
              <tfoot>
              <!-- <input type="button" value="<" class="prev"/>
              <input type="button" value=">" class="next" /> -->
              </tfoot>
            </table>
        </section>
        <section id="message_content">
        
        </section>
    </section>
    <div id="composer">
        <form name="composer">
        <input type="button" class="close" value="x" />
            <label><span>Recipent</span><input type="text" placeholder="Enter username of the recipent [comma seperated values]" name="recipients" id="comprecip" /> </label>
            <label><span>Subject</span><input type="text" placeholder="Enter the subject of the message" name="subject" id="compsubj" /> </label>
            <textarea id="compmessage" name="message" placeholder="Enter message here...">
</textarea>
            <input type="submit" value="Send" />
        </form>
    </div>
    
    <script src="static/js/mail.js"></script>
<?php }else{ ?>
    
<link href="static/css/home.css" rel="stylesheet" type="text/css" />
<div id="container">
    <div id="login-box">
        <p>Welcome! </p>
       <form class="logreg" name="login" autocomplete="off">
            <label class="fields" ><span>Username:</span><input name="username" required class="form-login" title="Username" id="username"  /></label>
            <label class="fields" ><span>Password:</span><input name="pass" type="password" class="form-login" title="Password" id="pass" /></label>
            <input type="submit" class="regsign login" value="login" />
        </form> 
    </div>
</div>
<script src="static/js/home.js"></script>
<?php } ?>
</body>

</html>

