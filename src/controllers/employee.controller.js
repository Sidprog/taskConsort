const EmployeeModel = require('../models/employee.model');

//get all employee list
exports.getEmployeeList = (req, res) => {
    // console.log('Here is the list of all employees');
    EmployeeModel.getAllEmployees((err, employees) => {
        //Pagination trial
        const page = req.query.page;
        const limit = req.query.limit;
        const startIndex = (page - 1) * limit;
        const endIndex = page * limit;
        const resultEmployees = employees.slice(startIndex, endIndex);

        //console.log('We are here');
        if (err)
            res.send(err);
        if (page && limit) {
            console.log('Employees', resultEmployees);
            res.send(resultEmployees)
        }
        else {
            console.log('Employees', employees);
            res.send(employees);
        }
    })
}

//get employee by ID
exports.getEmployeeByID = (req, res) => {
    // console.log('Get Employee by ID');
    EmployeeModel.getEmployeeByID(req.params.id, (err, employee) => {
        if (err)
            res.send(err);
        console.log('Data for employee by ID', employee);
        res.send(employee);
    })
};

//create a new employee
exports.createNewEmp = (req, res) => {
    const employee_ReqData = new EmployeeModel(req.body);
    console.log('employeeReqData', employee_ReqData);
    if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
        res.status(400).send({ success: false, message: 'Please fill all fields' });
    }
    if (req.body.employee_name === null || req.body.employee_name === undefined || req.body.employee_name === '') {
        res.status(400).send({ success: false, message: 'Please fill employee name' });
    }
    else {
        console.log('valid data');
        EmployeeModel.createEmployee(employee_ReqData, (err, employee) => {
            if (err)
                res.send(err);
            res.json({ status: true, message: 'Employee Record created successfully', data: employee })
        })
    }
}

//update employee records
exports.updateEmployee = (req, res) => {
    const employee_ReqData = new EmployeeModel(req.body);
    console.log('employeeReqData Update', employee_ReqData);
    if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
        res.send(400).send({ success: false, message: 'Please fill all fields' });
    }
    if (req.body.employee_name === null || req.body.employee_name === undefined || req.body.employee_name === '') {
        res.status(400).send({ success: false, message: 'Please fill employee name' });
    }
    else {
        console.log('valid data');
        EmployeeModel.updateEmployee(req.params.id, employee_ReqData, (err, employee) => {
            if (err)
                res.send(err);
            res.json({ status: true, message: 'Employee Record updated successfully', data: employee })
        })
    }
}

//Delete employee records
exports.deleteEmployee = (req, res) => {
    EmployeeModel.deleteEmployee(req.params.id, (err, employee) => {
        if (err)
            res.send(err);
        res.json({ success: true, message: 'Employee deleted successfully!' });
    })
}