const express = require("express");

const auth = require("../middleware/auth");
const Product = require("../model/products_model");
const productRouter = express.Router();

// /api/products?category=Mobile
// api/amazon?theme=dark
// api/product:category=Mobile

//get products
productRouter.get("/api/products", auth, async (req, res) => {
  try {
    console.log(req.query.category);
    const products = await Product.find({ category: req.query.category });
    res.json(products);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

module.exports = productRouter;
