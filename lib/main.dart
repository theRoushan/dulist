import 'package:dulist/theme/pallete.dart';
import 'package:dulist/theme/typography.dart';
import 'package:dulist/widget/category_related.dart';
import 'package:dulist/widget/completed_task_card.dart';
import 'package:dulist/widget/progress_task_card.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Palette.kToDark,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        home: const HomeScreen(),
      );
    });
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      //User avatar with salutation and name
                      Container(
                        margin:
                            EdgeInsets.only(left: 4.w, right: 2.w, top: 3.h),
                        child: Row(
                          children: [
                            Container(
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    'https://randomuser.me/api/portraits/thumb/men/75.jpg'),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Hello,',
                                      style: Styles.kCalloutLabel,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Arthur Woods',
                                      style: Styles.kTitle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          EvaIcons.calendarOutline,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          EvaIcons.bellOutline,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                const CategoryRelated(
                  title: 'On Progress ',
                  subtitle: 'View More',
                ),

                //card containing task details
                SizedBox(
                  height: 30.h,
                  child: ListView(
                    padding: EdgeInsets.only(left: 4.w),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ProgressTaskCard(
                        title: 'Design UI ToDo APP',
                        date: 'Friday, 12 June 2021',
                        icon: EvaIcons.peopleOutline,
                        iconBg: Palette.paleOrange,
                        iconColor: Palette.paleDarkOrange,
                        description:
                            'Design a simple home pages with clean layout and color based on the guidelines provided by the client and the team.',
                        progress: 75,
                      ),
                      ProgressTaskCard(
                        title: 'Design UI ToDo APP',
                        date: 'Friday, 12 June 2021',
                        icon: EvaIcons.peopleOutline,
                        iconBg: Palette.lightPurple,
                        iconColor: Palette.darkPurple,
                        description:
                            'Design a simple home pages with clean layout and color based on the guidelines provided by the client and the team.',
                        progress: 75,
                      ),
                    ],
                  ),
                ),

                const CategoryRelated(
                  title: 'Completed ',
                  subtitle: 'View More',
                ),
                //List of completed task in vertical list
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(left: 4.w, right: 4.w),
                    scrollDirection: Axis.vertical,
                    children: const [
                      CompletedTaskCard(
                        title: 'Design UI ToDo APP',
                        date: 'Friday, 12 June 2021',
                        icon: EvaIcons.peopleOutline,
                        iconBg: Palette.paleOrange,
                        iconColor: Palette.paleDarkOrange,
                        description:
                            'Design a simple home pages with clean layout and color based on the guidelines provided by the client and the team.',
                        progress: 100,
                      ),
                      CompletedTaskCard(
                        title: 'Design UI ToDo APP',
                        date: 'Friday, 12 June 2021',
                        icon: EvaIcons.peopleOutline,
                        iconBg: Palette.lightPurple,
                        iconColor: Palette.darkPurple,
                        description:
                            'Design a simple home pages with clean layout and color based on the guidelines provided by the client and the team.',
                        progress: 100,
                      ),
                      CompletedTaskCard(
                        title: 'Design UI ToDo APP',
                        date: 'Friday, 12 June 2021',
                        icon: EvaIcons.peopleOutline,
                        iconBg: Palette.lightPurple,
                        iconColor: Palette.darkPurple,
                        description:
                            'Design a simple home pages with clean layout and color based on the guidelines provided by the client and the team.',
                        progress: 100,
                      ),
                      CompletedTaskCard(
                        title: 'Design UI ToDo APP',
                        date: 'Friday, 12 June 2021',
                        icon: EvaIcons.peopleOutline,
                        iconBg: Palette.lightPurple,
                        iconColor: Palette.darkPurple,
                        description:
                            'Design a simple home pages with clean layout and color based on the guidelines provided by the client and the team.',
                        progress: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              width: 100.w,
              height: 22.h,
              child: IgnorePointer(
                child: Container(
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 1.0],
                      colors: [
                        Palette.background.withOpacity(0.0),
                        Palette.background,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 2.h),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Palette.kToDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                EvaIcons.plus,
                color: Colors.white,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'Create New',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontFamily: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                  ).fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
