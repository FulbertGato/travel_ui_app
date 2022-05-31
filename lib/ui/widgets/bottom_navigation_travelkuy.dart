import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configs/colors.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  const BottomNavigationTravelkuy({Key? key}) : super(key: key);

  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;

  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 5))
        ],
        borderRadius:const  BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/icons/home_colored.svg')
                : SvgPicture.asset('assets/icons/home.svg'),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/icons/order_colored.svg')
                : SvgPicture.asset('assets/icons/order.svg'),
            label: 'Order',
          ),

          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/icons/watch_colored.svg')
                : SvgPicture.asset('assets/icons/watch.svg'),
            label: 'Watch',
          ),

          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/icons/account_colored.svg')
                : SvgPicture.asset('assets/icons/account.svg'),
            label: 'Account',
            
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}