
import 'package:flutter/material.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: double.infinity,
      width: double.infinity,
      child: Text("صفحه ای جزییات محصول ", style: TextStyle(fontSize: 30),),
    );
  }
}