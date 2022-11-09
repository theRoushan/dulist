import 'package:dulist/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProgressTaskCard extends StatelessWidget {
  final String title;
  final String date;
  final Color iconColor;
  final IconData icon;
  final Color iconBg;
  final String description;
  final int progress;
  const ProgressTaskCard({
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
      margin: EdgeInsets.only(right: 4.w),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: 80.w,
            height: 30.h - 10,
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
                        Container(
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
                                height: 0.6.h,
                              ),
                              Container(
                                child: Text(
                                  date,
                                  style: Styles.kCalloutLabel,
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
                      height: 1.h,
                    ),
                    //Task description
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Description : ',
                              style: Styles.kCalloutLabel,
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
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Teams :',
                            style: Styles.kCalloutLabel,
                          ),
                        ),
                        Container(
                          child: Text(
                            'Progress :',
                            style: Styles.kCalloutLabel,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    //Team avatar list and circular progress bar with percentage
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: SizedBox(
                                  width: 23,
                                  height: 23,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 4,
                                    value: progress / 100,
                                    backgroundColor: Colors.green[100],
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Colors.green),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                child: Text(
                                  '$progress%',
                                  style: Styles.kTitle
                                    ..copyWith(fontSize: 10.sp),
                                ),
                              ),
                            ],
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
          Container(
            color: iconBg,
            height: 10,
            width: 80.w,
          ),
        ],
      ),
    );
  }
}
