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

