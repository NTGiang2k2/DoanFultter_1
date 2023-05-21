import 'package:flutter/material.dart';

class AllItem extends StatelessWidget {
  const AllItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for(int i= 1; i < 9; i++)
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,top: 20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 238, 242),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(
                color: Color.fromARGB(26, 15, 15, 15),
                blurRadius: 10,
                spreadRadius: 10,
              )]
            ),
            child: Column(
                  children: [ 
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset("assets/h2.jpg",
                        height:150,
                        width: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Iphone 14 promax - Chính hãng 512Gb",
                        style: TextStyle(fontSize: 20),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("25.000.000 đ",
                          style: TextStyle(fontSize: 20,color: Colors.red),),
                        ],
                      ),
                    )
                  ],
                ),
          ),
      ],
    );
  }
}