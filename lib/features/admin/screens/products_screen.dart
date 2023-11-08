import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/admin/screens/add_products_screen.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  navigateToAddProductScreen() {
    Navigator.pushNamed(context, AddProductsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Products Screen'),
      floatingActionButton: FloatingActionButton(
        onPressed:navigateToAddProductScreen,
        tooltip: 'Add a Products',
        child: const Icon(
          Icons.add,
          size: 20,
          color: GlobalVariables.blackColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
