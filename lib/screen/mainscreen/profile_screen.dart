
import 'package:flutter/material.dart';
import 'package:watch_store/screen/product_single_screen%20copy.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: double.infinity,
      width: double.infinity,
       child: Center(
         child: SizedBox(
          width: 300,
          height: 200,
           child: ElevatedButton(onPressed: () => 
                 // Navigator.pushNamed(context, ScreenNames.productListScreen), 
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProductSingleScreen())),
                 child: const Text("مشاهده همه")),
         ),
       ),
  
    );
  }
}