var dbConn = require('../../config/db.config');
let Employee = function (employee) {
    this.employee_name = employee.employee_name;
    this.employee_salary = employee.employee_salary;
    this.employee_age = employee.employee_age;
    this.profile_image = employee.profile_image;
}
//get all employees
Employee.getAllEmployees = (result) => {
    try {
        dbConn.query('SELECT * FROM employees', (err, res) => {
            if (err) {
                console.log('Error while fetching employees', err);
                result(err, null);
            }
            else {
                console.log('Employees fetched successfully');
                result(null, res);
            }
        })
    }
    catch (error) {
        result(error, null);
    }
}

//get employee by ID
Employee.getEmployeeByID = (id, result) => {
    try {
        dbConn.query('SELECT * FROM employees WHERE id=?', id, (err, res) => {
            if (err) {
                console.log('Error while fetching employee by ID');
                result(err, null);
            }
            else {
                result(null, res);
            }
        })
    }
    catch (error) {
        result(error, null);
    }
}

//create new employee
Employee.createEmployee = (employeeReqData, result) => {
    try {
        dbConn.query('INSERT INTO employees SET ?', employeeReqData, (err, res) => {
            if (err) {
                console.log('Error while inserting data');
                result(err, null);
            }
            else {
                console.log('New employee record created');
                result(null, res)
            }
        });
    }
    catch (error) {
        result(error, null);
    }
}

//update employee
Employee.updateEmployee = (id, employeeReqData, result) => {
    try {
        dbConn.query('UPDATE employees SET employee_name=?, employee_salary=?, employee_age=?, profile_image=? WHERE id= ?', [employeeReqData.employee_name, employeeReqData.employee_salary, employeeReqData.employee_age, employeeReqData.profile_image, id], (err, res) => {
            if (err) {
                console.log('Error while updating the record');
                result(err, null);
            }
            else {
                console.log("Employee updated successfully");
                result(null, res);
            }
        });
    }
    catch (error) {
        result(error, null);
    }
}

//delete employee
Employee.deleteEmployee = (id, result) => {
    try {
        dbConn.query('DELETE FROM employees WHERE id=?', [id], (err, res) => {
            if (err) {
                console.log('Error while deleting the record');
                result(err, null);
            }
            else {
                result(null, res);
            }
        })
    }
    catch (error) {
        result(error, null);
    }
}

module.exports = Employee;
