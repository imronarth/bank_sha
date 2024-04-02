import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecent()
          buildResult()
        ],
      ),
    );
  }

  Widget buildRecent() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            name: 'Yohanna Aji',
            username: 'yohanna',
            urlImage: 'assets/img_friend1.png',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            name: 'Patricia',
            username: 'patricia',
            urlImage: 'assets/img_friend2.png',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            name: 'John Doe',
            username: 'johndoe',
            urlImage: 'assets/img_friend3.png',
          ),
          const TransferRecentUserItem(
            name: 'Alvert Kei',
            username: 'alvert',
            urlImage: 'assets/img_friend4.png',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
