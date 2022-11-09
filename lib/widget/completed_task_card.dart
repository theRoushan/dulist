import 'package:dulist/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CompletedTaskCard extends StatelessWidget {
  final String title;
  final String date;
  final Color iconColor;
  final IconData icon;
  final Color iconBg;
  final String description;
  final int progress;
  const CompletedTaskCard({
    Key? key,
    required this.title,
    required this.date,
    required this.iconColor,
    required this.icon,
    required this.iconBg,
    required this.description,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.5.h),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Container(
            color: iconBg,
            height: 20.h,
            width: 10,
          ),
          Container(
            color: Colors.white,
            width: 92.w - 10,
            height: 20.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Task title date and icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  title,
                                  style: Styles.headline3,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                child: Text(
                                  description,
                                  style: Styles.text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: iconBg,
                          child: Icon(
                            icon,
                            color: iconColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.6.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 0.6.h,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Today 10:00 AM',
                          style: Styles.kCalloutLabel,
                        ),
                        SizedBox(
                          width: 120,
                          height: 30,
                          child: Stack(
                            children: List.generate(
                              4,
                              (index) => Positioned(
                                left: 0 + (22.0 * index),
                                top: 0,
                                height: 30,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://randomuser.me/api/portraits/thumb/men/${(75 + index)}.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //bottom border
              ],
            ),
          ),
        ],
      ),
    );
  }
}
