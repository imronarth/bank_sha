import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataProviderItem extends StatelessWidget {
  final String name, imageUrl;
  final bool isAvailable, isSelected;
  const DataProviderItem({
    super.key,
    required this.name,
    required this.imageUrl,
    this.isAvailable = true,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: isSelected
            ? Border.all(
                color: blueColor,
                width: 2,
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                isAvailable ? 'Available' : 'Not Available',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
