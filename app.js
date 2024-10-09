const express = require('express');
const { join } = require('path')

const openningRouter = require('./api/router/openningRouter')
const doctorsRouter = require('./api/router/doctorsRouter')

const app = express();


app.use('/css', express.static(join(__dirname, 'src', 'css')))
app.use('/js', express.static(join(__dirname, 'src', 'js')))
app.use('/storage', express.static(join(__dirname, 'src', 'storage')))



app.use("/", (req, res, next)=>{
    req.__dirname = __dirname;
    next()
}, openningRouter);

app.use("/doctores", (req, res, next)=>{
    req.__dirname = __dirname;
    next()
}, doctorsRouter);



app.use((req, res)=>{
    res.status(404).json({message: "The endpoint is not available"});
})

let config = {
    port: process.env.EXPRESS_PORT,
    host: process.env.EXPRESS_HOST_NAME
}

app.listen(config, ()=>{
    console.log(`Server running at ${process.env.EXPRESS_PROTOCOL}${config.host}:${config.port}`);
});