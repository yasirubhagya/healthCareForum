const express = require('express');
const userRouter = express.Router();
const userController = require('../controllers/userController');

userRouter.get('/get/:UID',userController.getUserByUID);
userRouter.post('/addNew',userController.addNewUser);

module.exports = userRouter;