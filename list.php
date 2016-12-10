
<?php
    require_once 'etc/modules/user/user.lib.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <div class="container">
            <h2>List of users</h2>
           <table class="table table-striped">
              <thead>
                  <tr>
                      <th>Username</th>
                      <th>Fullname</th>
                  </tr>
              </thead>
              <tbody>
                  <?php
                    $users = User::getUsers();
                    foreach($users as $user){
                        ?>
                            <tr>
                                <td><?php echo $user['username']; ?></td>
                                <td><?php echo $user['first_name']." ".$user['last_name']; ?></td>
                            </tr>
                        <?php
                    }
                ?>
              </tbody>
            </table>
            <a href="index.php" class="btn btn-default">
                Back to homepage
            </a>
        </div>  
    </body>
</html>
