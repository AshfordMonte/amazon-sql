const mysql = require('mysql');
const inquirer = require('inquirer');
const { secret } = require('./secret.json');

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: secret,
  database: "bamazon"
});

connection.connect((err) => {
  if (err) throw err;
  listProducts();
})

function listProducts() {
  console.log("Listing all available products...\n");

  connection.query("SELECT * FROM products",
  (err, res) => {
    if (err) throw err;
    console.log(res);
    for (let i = 0; i < res.length; i++) {
      console.log("Id: " + res[i].item_id);
      console.log("Product Name: " + res[i].product_name);
      console.log("Department: " + res[i].department_name);
      console.log("Price: $" + res[i].price);
      console.log("# in Stock: " + res[i].stock_quantity);
      console.log("-----------------------");
    }
  });
}