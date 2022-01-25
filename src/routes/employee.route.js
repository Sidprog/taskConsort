const express = require('express');
const router = express.Router();
const employeeController = require('../controllers/employee.controller');

//get employee list
router.get('/', employeeController.getEmployeeList);

//get employee by ID
router.get('/:id', employeeController.getEmployeeByID);

//create new employee
router.post('/', employeeController.createNewEmp);

//update employee record
router.put('/:id', employeeController.updateEmployee);

//delete employee record
router.delete('/:id', employeeController.deleteEmployee);


module.exports = router;

