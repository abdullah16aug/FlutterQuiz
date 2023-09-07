const express = require("express");
const { loginUser, createUser, checkUser } = require("../controller/Auth");
const passport = require("passport");
const router = express.Router();
//  /brands is already added in base path
router.post("/login",loginUser)
.post("/signup", createUser)

exports.router = router;
