import 'package:flutter/material.dart';
import 'package:nigeria_ussd_codes/components/app_text.dart';
import 'package:nigeria_ussd_codes/constants/app_colors.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        children: [
          Image.asset('assets/images/tord.png'),
          const SizedBox(
            height: 10.0,
          ),
          const AppText(
            'Truth and Dare',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            size: 20,
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final Function() onTap;
  final IconData icon;
  const DrawerItem(
      {super.key, required this.text, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: AppText(
        text,
        size: 16,
        fontWeight: FontWeight.w500,
      ),
      contentPadding: const EdgeInsets.only(left: 16.0, right: 16.0),
      horizontalTitleGap: 0,
      onTap: onTap,
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}

Widget drawer(BuildContext context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          const ProfileContainer(),
          const SizedBox(
            height: 24,
          ),
          DrawerItem(
            onTap: () {},
            icon: Icons.star,
            text: 'Rate Us',
          ),
          DrawerItem(
            onTap: () {},
            icon: Icons.help,
            text: 'Contact Us',
          ),
          DrawerItem(
            onTap: () {},
            icon: Icons.share,
            text: 'Share this app',
          ),
        ],
      ),
    ),
  );
}
