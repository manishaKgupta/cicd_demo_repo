
<?php
$user = "test_user";
$password = "test_user";
$database = "test_database";
$table = "todo_list";

try {
  $db = new PDO("mysql:host=kunjan-rds-mysql1.cnbwakbdzeez.us-east-2.rds.amazonaws.com;dbname=$database", $user, $password);
  echo "<h2>TODO</h2><ol>"; 
  foreach($db->query("SELECT content FROM $table") as $row) {
    echo "<li>" . $row['content'] . "</li>";
  }
  echo "</ol>";
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
