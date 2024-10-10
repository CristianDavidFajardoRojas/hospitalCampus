const Doctors = require('../model/doctorsModel');

exports.searchAll = async (req, res) => {
    try {
        let doctors = new Doctors();
        let resAll = await doctors.getAllDoctors();
        return res.status(resAll.status).json(resAll);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}


exports.searchById = async (req, res) => {
    try {
        let doctors = new Doctors();
        let resById = await doctors.getDoctorById(req.params.id);
        return res.status(resById.status).json(resById);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}


exports.save = async (req, res) => {
    try {
        let doctors = new Doctors();
        let resInsert = await doctors.insertDoctor(req.body);
        return res.status(resInsert.status).json(resInsert);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}



exports.delete = async (req, res) => {
    try {
        let doctors = new Doctors();
        let resDelete = await doctors.deleteDoctor(req.params.id);
        return res.status(resDelete.status).json(resDelete);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}


exports.update = async (req, res) => {
    try {
        let doctors = new Doctors();
        let resUpdate = await doctors.updateDoctor(req.params.id, req.body);
        return res.status(resUpdate.status).json(resUpdate);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}

