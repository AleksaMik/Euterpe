var inquirer = require ('inquirer');
var mysql = require ('mysql');
var cTable = require ('console.table');

var connection = mysql.createConnection({
    host: "localhost",
    port:3001,
    user:"root",
    password:" ",
    database: "employee_tracker"
});

connection.connect ((err) => {
    if(err) throw err;
    runSearch();
});
function runSearch() {
    inquiirer
    .prompt({
        name: "selection",
        type:"list",
        message: "What would you like to do?",
        choices:
        [
            "View All Employees",
            "View Department",
            "View role",
            "Add Employee",
            "Add Department",
            "Add Role",
            "Update Role",
        ]
    })
    .then(function(answer){
        console.log(answer);
        if (answer.selection === "View All Employees") {
            viewAll();
        }
        else if (answer.selection ===  "View Department") {
            viewdepts();
        }
        else if (answer.selection === "View role") {
            viewRole();
        }
        else if (answer.selection === "Add Employee") {
            addEmployee();
        }
        else if (answer.selection === "Add Department") {
            addDept();
        }
        else if (answer.selection === "Add Role") {
            addRole();
        }
        else if (answer.selection ===  "Update Role") {
            updateRole();
        } 
        else {
            connection.end();
        }
    });
}
