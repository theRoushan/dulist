import 'package:dulist/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoryRelated extends StatelessWidget {
  final String title;
  final String subtitle;

  const CategoryRelated({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        children: [
          Container(
            child: RichText(
              text: TextSpan(
                text: title,
                style: Styles.kHeadline,
                children: <TextSpan>[
                  TextSpan(
                    text: '(12)',
                    style: Styles.kHeadline.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            child: Text(
              subtitle,
              style: Styles.link,
            ),
          ),
        ],
      ),
    );
  }
}
