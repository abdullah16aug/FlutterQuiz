const { User } = require("../model/User");


exports.createUser = async (req, res) => {
 try{
    const user= await User.create(req.body)
              return res.status(201)
              .json(user);

  } catch (error) {
    return res.status(400).json({ error: error.message });
  }
};

exports.loginUser = async (req, res) => {
    try {
   const user=await User.findOne({email:req.body.email,password:req.body.password})
    if(!user){
    return res.status(400).json({ error: "User not found" });
    }
   
else
   return  res.status(200)
        .json({ token: user });
    } catch (error) {
      // Handle other errors, e.g., database connection issues
      console.error('Login error:', error);
      res.status(500).json({ message: 'Internal server error' });
    }
  };
  

