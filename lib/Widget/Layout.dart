import 'package:do_an_flutter/View/Home/Home.dart';
import 'package:do_an_flutter/View/Personal/Personal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
<<<<<<< HEAD
import '../View/Auth/Login/Login.dart';
import '../View/Cart/GioHang.dart';
=======
import '../View/Product/Product.dart';
>>>>>>> 359d4d7b4fb3bcff4d9649908598ea86d94abb81
import 'WidgetAll.dart';

class LayoutWidget extends StatefulWidget {
  LayoutWidget({super.key, required this.title});
  String title;

  @override
  State<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  TextEditingController _controllerSearch = TextEditingController();
  int _selectedIndex = 0;
<<<<<<< HEAD
  static List<Widget> _widgetOptions = <Widget>[
    LoginPage(),
    ProductPage(),
=======
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    lstItem(),
>>>>>>> 359d4d7b4fb3bcff4d9649908598ea86d94abb81
    PersonalPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Center(child: FaIcon(FontAwesomeIcons.chevronLeft)),
        actions: [
          IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.gear)),
        ],
        title: Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: searchAppbar(context, _controllerSearch),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cartShopping),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      // controller: editingController,
      decoration: InputDecoration(
        labelText: "Tìm kiếm...",
        hintText: "Tìm kiếm",
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          color: Colors.white,
          onPressed: () {},
        ),
<<<<<<< HEAD
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
=======
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
>>>>>>> 359d4d7b4fb3bcff4d9649908598ea86d94abb81
        ),
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
