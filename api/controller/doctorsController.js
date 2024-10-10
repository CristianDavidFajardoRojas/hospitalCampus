const Doctors = require('../model/doctorsModel');

exports.searchAll = async (req, res) => {
    try {
        let doctors = new Doctors();
        let res = await doctors.getAllDoctors();
        return res.status(res.status).json(res);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}


exports.searchById = async (req, res) => {
    try {
        let doctors = new Doctors();
        let res = await doctors.getDoctorById(req.params.id);
        return res.status(res.status).json(res);
    } catch (error) {
        let err = JSON.parse(error.message);
        if(err.status == 500) return res.status(err.status).json(err);
    }
}

