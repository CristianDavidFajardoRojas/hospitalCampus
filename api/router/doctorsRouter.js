const router = require('express').Router();
const doctoresV1 = require('../version/doctoresV1');

router.use("/v1", doctoresV1);

module.exports = router;