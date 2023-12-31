import 'package:ap/Pages/Home/home.dart';
import 'package:ap/Pages/Addposts/add_post.dart';
import 'package:ap/Pages/Profile/EditProfile/Edit_Profile.dart';
import 'package:ap/Pages/Profile/ProfilePage.dart';
import 'package:ap/Pages/Search/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectionIndex = 0;
  void navigateBottomNavbar(int index) {
    setState(() {
      selectionIndex = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    const Search(username: "Gokul", usertype: "Alumni"),
    MyProfilePage(),
    const AddPost(),
    MyProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[selectionIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectionIndex,
        onTap: navigateBottomNavbar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: 'files'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'addpost'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'account'),
        ],
      ),
    );
  }
}
