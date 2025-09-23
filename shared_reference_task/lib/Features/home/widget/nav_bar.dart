import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' as svgl;
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:shared_reference_task/Core/utils/app_assets.dart';
import 'package:shared_reference_task/Features/home/view/screens/calls.dart';
import 'package:shared_reference_task/Features/home/view/screens/chats.dart';
import 'package:shared_reference_task/Features/home/view/screens/communties.dart';
import 'package:shared_reference_task/Features/home/view/screens/settings.dart';
import 'package:shared_reference_task/Features/home/view/screens/updatets.dart';
PersistentTabController _controller=PersistentTabController();
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PersistentTabView(
      
      context,
      controller: _controller,
      screens: _buildScreens(),
       items: _navBarsItems(),
        navBarStyle: NavBarStyle.style6,
        backgroundColor: Colors.white, 
decoration: NavBarDecoration(
      borderRadius: BorderRadius.only( 
        
        bottomLeft:Radius.circular(10),
        bottomRight: Radius.circular(10), 
     )),
   ), 
      
      
    );
  }
}

List<Widget>_buildScreens()
{
return[
const Updatets(),
const Calls(),
const Communties(),
const Chats(),
const Settings(),
];
}
List<PersistentBottomNavBarItem> _navBarsItems()
{
return [
PersistentBottomNavBarItem(
   activeColorPrimary: Colors.black,
 inactiveIcon: svgl.SvgPicture.asset(Assets.icon1),
  icon:svgl.SvgPicture.asset(Assets.icon1o), ),

PersistentBottomNavBarItem(
   activeColorPrimary: Colors.black,
  inactiveIcon:svgl.SvgPicture.asset(Assets.icon2),
  icon: Icon(Icons.phone),),


PersistentBottomNavBarItem(
   activeColorPrimary: Colors.black,
  inactiveIcon: Icon(Icons.groups_2_outlined),
  icon: Icon(Icons.groups_2)),

PersistentBottomNavBarItem(
   activeColorPrimary: Colors.black,
  inactiveIcon: svgl.SvgPicture.asset(Assets.shape),
  icon: svgl.SvgPicture.asset(Assets.shape2),),

PersistentBottomNavBarItem(
   activeColorPrimary: Colors.black,
  inactiveIcon: svgl.SvgPicture.asset(Assets.icon3),
  icon: svgl.SvgPicture.asset(Assets.icon3o),),






];




}

