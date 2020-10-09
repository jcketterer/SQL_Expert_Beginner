var express = require('express');
var mysql = require('mysql');
var bodyParser  = require("body-parser");
var app = express();

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
	host      : 'localhost',
	user      : 'root',
	database  : 'join_us'	
});

app.get("/", function(req, res){
	var q = "SELECT COUNT(*) AS count FROM users";
	connection.query(q, function(error, results){
		if (error) throw error;
		var counter = results[0].count;
		res.render("home", {count: counter});
	});
});

app.post('/register', function(req, res){
    var person = {
		email: req.body.email
	}

	connection.query('INSERT INTO users SET ?', person, function(error, result) {
   		if (error) throw error;
   		console.log(result);
		res.redirect("/")
 	});
});

app.listen(3000, function (){
	console.log("Server running on 3000");
});



























