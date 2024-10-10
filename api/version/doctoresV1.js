const controllerDoctors = require('../controller/doctorsController');
const express = require('express');

const doctors = express();

doctors.get("/all", controllerDoctors.searchAll);
doctors.get("/doctorId/:id", controllerDoctors.searchById);
doctors.post("/postDoctor", express.json(), controllerDoctors.save);
doctors.delete("/delete/:id", controllerDoctors.delete)
doctors.put("/update/:id", express.json(), controllerDoctors.update);

module.exports = doctors;