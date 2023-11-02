//Imp from package
const express = require("express");
const mongoose = require("mongoose");

//Imp from project file
const authRouter = require("./routes/auth");

//Init
const PORT = 4000;
const app = express();
const dbUrl =
  "mongodb+srv://rahul4girgal:Rahul123@cluster0.xzya2el.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json()); // it only pass the incoming request with the json payload
app.use(authRouter);

mongoose
  .connect(dbUrl)
  .then(() => {
    console.log("Connected to Server Successful");
  })
  .catch((e) => {
    console.log(e);
  });
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Connected to ${PORT}`);
});
