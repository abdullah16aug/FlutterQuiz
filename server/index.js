const express = require("express");
const server = express();
const mongoose = require("mongoose");


const authRoute=require('./routes/Auth')

server.use(express.json()); // to parse req.body

//middlewares


server.use('/home',(req,res)=>{
res.send('home')
})
server.use('/auth',authRoute.router)

async function main() {
    await mongoose.connect("mongodb://127.0.0.1:27017/quizFlutter");
    console.log("database connected");
  }
  
  
  main().catch((err) => console.log(err));
  
  server.listen(8080, () => {
    console.log("server started");
  });
  