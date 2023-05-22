import 'package:flutter/material.dart';

import 'allitem.dart';


class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}
class _ProductPageState extends State<ProductPage> {
  
  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text('─────────Có thể bạn cũng thích─────────', textAlign: TextAlign.center,)
              ),
              
              AllItem(),
            ],
          ),
        );
  }
}
