<!DOCTYPE html>
<html>
   <head>
      <style>
         /*css for display*/
         .button {
         border: none;
         color: #864c7f;
         padding: 10px 10px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         cursor: pointer;
         background-color: #eadce0;
         }
         body {
         width:800px;
         border:grey 1px solid;
         border-style:dashed;
         margin:auto;
         padding:10px;
         }
         td {
         text-align:center;
         padding:10px;
         }
         table {
         margin:auto;
         border:#864c7f 1px solid;
         }
         label {
         font-size:18px;
         color:#987d87;
         font-family: cursive;
         }
         h1 {
         color:#864c7f;
         text-align:center;
         font-family: Arial;
         }
         th {
         color:#864c7f;
         font-size:20px;
         font-family: Arial;
         }
      </style>
   </head>
   <body>
      <h1>Course Report</h1>
      <form id="form1" name="form1" method="post"  action="<?php echo $PHP_SELF; ?>" style="color: #864c7f; font-size: 20px;">
         <?  
            mysql_connect ("test","UserDataDb","test");  
            mysql_select_db ("UserDataDb");  
            $select="UserDataDb";  
            if (isset ($select)&&$select!=""){  
            $select=$_POST ['NEW'];  
            }  
            ?>
         User:  
         <select Emp Name='NEW'>
            <option value=""></option>
            <?  
               $list=mysql_query("select UserID, FirstName||Surname as Name from Users order by FirstName asc");  
               while($row_list=mysql_fetch_assoc($list)){  
               ?>  
            <option value="<? echo $row_list['Name']; ?>"<? if($row_list['Name']==$select){ echo "selected"; } ?>>  
               <?echo $row_list['Name'];?>  
            </option>
            <?  
               }  
               ?>  
         </select>
         Course: 
         <select Emp Name='NEW'>
            <option value=""></option>
            <?  
               $list=mysql_query("select CourseID, Description from Courses order by Description asc");  
               while($row_list=mysql_fetch_assoc($list)){  
               ?>  
            <option value="<? echo $row_list['Description']; ?>"<? if($row_list['Description']==$select){ echo "selected"; } ?>>  
               <?echo $row_list['Description'];?>  
            </option>
            <?  
               }  
               ?>  
         </select>
         Completion status:
         <select Emp Name='NEW'>
            <option value=""></option>
            <?  
               $list=mysql_query("select distinct CompletionStatus from Enrollments order by CompletionStatus asc");  
               while($row_list=mysql_fetch_assoc($list)){  
               ?>  
            <option value="<? echo $row_list['CompletionStatus']; ?>"<? if($row_list['CompletionStatus']==$select){ echo "selected"; } ?>>  
               <?echo $row_list['CompletionStatus'];?>  
            </option>
            <?  
               }  
               ?>  
         </select>
         <br/><br/>
         <button class="button" onclick="submitFunction()">Submit</button>
         <script>
            function submitFunction()
            {
                document.getElementById("UserID").value = $row_list['UserID'];
                document.getElementById("CourseID").value = $row_list['CourseID'];
                document.getElementById("CompletionStatus").value = $row_list['CompletionStatus'];
                document.getElementById("form1b").submit();
            }
         </script>
      </form>
      <br/>
      <form id="form1b" name="form1b" method="post" action="<?php echo $PHP_SELF; ?>">
         <input type="hidden" id="UserID" name="UserID" value="">
         <input type="hidden" id="CourseID" name="CourseID" value="">
         <input type="hidden" id="CompletionStatus" name="CompletionStatus" value="">
         <table border="1" cellspacing="5" cellpadding="5" width="100%">
            <thead>
               <tr>
                  <th>First Name</th>
                  <th>Surname</th>
                  <th>Course Description</th>
                  <th>Completion Status</th>
               </tr>
            </thead>
            <tbody>
               <?php
                  $db_server = "test";
                  $db_username = "test";
                  $db_password = "test";
                  $db_database = "UserDataDb";
                  
                  $conn = new PDO("mysql:host=$db_server;dbname=$db_database", $db_username, $db_password);
                  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                  
                  $selectQuery = "SELECT Users.FirstName, Users.Surname, Courses.Description, Enrollments.CompletionStatus FROM Users, Courses, Enrollments WHERE Enrollments.UserID = Users.UserID AND Enrollments.CourseID = Courses.CourseID";
                  
                  ?>
               if(document.getElementById("UserID").value != "")
               <?php 
                  $selectQuery = $selectQuery + " and Users.UserID = "
                  ?> 
               document.getElementById("UserID").value; 
               if(document.getElementById("CourseID").value != "")
               <?php 
                  $selectQuery = $selectQuery + " and Courses.CourseID = "
                  ?> 
               document.getElementById("CourseID").value;
               if(document.getElementById("CompletionStatus").value != "")
               <?php 
                  $selectQuery = $selectQuery + " and Enrollments.CompletionStatus = '"
                  ?>
               document.getElementById("CompletionStatus").value;
               <?php
                  "'";
                  
                  $selectQuery = $selectQuery + ";";
                  
                  $result = $conn->prepare($selectQuery);
                  $result->execute();
                  for($i=0; $row = $result->fetch(); $i++){
                  ?>
               <tr>
                  <td><label><?php echo $row['FirstName']; ?></label></td>
                  <td><label><?php echo $row['Surname']; ?></label></td>
                  <td><label><?php echo $row['Description']; ?></label></td>
                  <td><label><?php echo $row['CompletionStatus']; ?></label></td>
               </tr>
               <?php } ?>
            </tbody>
         </table>
      </form>
   </body>
</html>
