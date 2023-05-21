import 'package:do_an_flutter/Product/allitem.dart';
import 'package:flutter/material.dart';


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
                child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 70)),
                  IconButton(
                    icon: const Icon(Icons.arrow_back,size: 30,),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                  Container(
                    height: 50,
                    //width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 229, 229),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.5,
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Điện thoại",
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search,size: 30,),
                          color: Color.fromARGB(255, 186, 185, 185),
                          onPressed: () {},
                        ),
                        
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart,size: 30,),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ],
              ),
              ),
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
