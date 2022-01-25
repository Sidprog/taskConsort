const mysql = require('mysql');

const dbConn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'taskconsort'
});
dbConn.connect(function (error) {
    if (error) throw error;
    console.log('Database connected successfully');
})
module.exports = dbConn;