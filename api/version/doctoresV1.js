const controllerDoctors = require('../controller/doctorsController');
const express = require('express');

const doctors = express();

doctors.get("/all", controllerDoctors.searchAll);
doctors.get("/doctorId/:id", controllerDoctors.searchById);
doctors.post("/postDoctor", express.json(), controllerDoctors.save);
// doctors.put("/:id", express.json(), controllerDoctors.update);
// doctors.delete("/:id", controllerDoctors.delete)

module.exports = doctors;