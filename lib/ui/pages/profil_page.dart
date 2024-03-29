import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile'
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(29)),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/img_profile.png'))),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Imron Athoriq",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_edit_profil.png", 
                  title: "Edit Profile",
                  onTap: () async{
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_my_pin.png", 
                  title: "My PIN",
                  onTap: () async{
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/profile-edit-pin');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_wallet_settings.png", 
                  title: "Wallet Settings",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_my_reward.png", 
                  title: "My Rewards",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_help_center.png", 
                  title: "Help Center",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_log_out.png", 
                  title: "Log Out",
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: "Report a Problem",
            onPressed: () {
              
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
