const inquirer = require("inquirer");
const mysql = require("mysql");
const consoleTable = require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "Giants.2008",
    database: "employee_tracker",
});
  
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    // run the start function after the connection is made to prompt the user
    start();
});

function start() {
    inquirer.prompt ({
      name: "commandQuestions",
      type: "list",
      message: "What would you like to update?",
      choices: ["Add Departments", "Add Roles", "Add Employee","View Departments","View Roles","View Employee","Update Employee Roles"]
    })
    
    .then(function(answer) {
        console.log(answer.commandQuestions);
        switch(answer.commandQuestions){
            case"Add Departments":
            addDepartments();
            break;
    
          case "Add Roles":
            addRoles();
            break;
    
          case "Add Employee":
            addEmployee();
            break;
    
          case "View Departments":
            viewDepartments();
            break;
    
          case "View Roles":
            viewRoles();
            break;
            case "View Employee":
            viewEmployee();
            break;
    
          case "Update Employee Roles":
            updateEmployeeRoles();
            break;
        }
    
        
    });

}

function addDepartments(){
    
}

function addRoles(){
    
}

function addEmployee(){
   
}

function viewDepartments(){
    var query = "SELECT id, name FROM department";
    connection.query(query, function(err, res)  {
      console.table(res);
      start();
    })  
}

function viewRoles(){
    var query = "SELECT id, title, salary, department_id FROM role";
    connection.query(query, function(err, res)  {
      console.table(res);
      start();
    })
}

function viewEmployee(){
    var query = "SELECT id, employee_id, first_name, last_name, role, manager_id FROM employee";
    connection.query(query, function(err, res)  {
      console.table(res);
      start();
    })
}

function updateEmployeeRoles(){

}
