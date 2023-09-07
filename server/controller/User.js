const {User} = require('../model/User')

exports.createUser=async(req,res)=>{
    const data =new User(req.body)
    try {
        const user =await data.save()
        res.status(200).json(user)
    } catch (error) {
        res.status(400).json(error)
    }
}
exports.fetchUserById=async(req,res)=>{
    const {id} =req.params
    console.log(id)
    try {
        const user =await User.findById(id)
        res.status(200).json(user)
    } catch (error) {
        res.status(400).json(error)
    }
}
exports.updateUser=async(req,res)=>{
    const {id} =req.params
    console.log(id)
    try {
        const user =await User.findOneAndUpdate(id,req.body,{new:true})
        res.status(200).json(user)
    } catch (error) {
        res.status(400).json(error)
    }
}