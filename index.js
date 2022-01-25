const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const port = process.env.PORT || 8000;

//parse request data
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get('/', (request, respose) => {
    respose.send('Hello World');
});

//import employee routes
const employeeRoutes = require('./src/routes/employee.route');

app.use('/api/v1/employee', employeeRoutes);

app.listen(port, () => {
    console.log(`Express Server is working at port ${port}`);
});