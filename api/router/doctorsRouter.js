const router = require('express').Router();
const doctorV1 = require('../version/doctoresV1');

router.use("/v1", doctorV1);

module.exports = router;
