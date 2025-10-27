import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoApplicationScreen extends StatefulWidget {
  const TodoApplicationScreen({super.key});

  @override
  State<TodoApplicationScreen> createState() => _TodoApplicationScreenState();
}

class _TodoApplicationScreenState extends State<TodoApplicationScreen> {
  List<Color> todoCardColors = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 70.h,
            width: double.infinity,
            color: Color.fromRGBO(2, 167, 177, 1),
            child: Row(
              children: [
                Text(
                  "To-do list",
                  style: GoogleFonts.quicksand(fontSize: 26.sp, fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,

              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: (index == 0)
                      ? EdgeInsets.only(bottom: 25.h / 2, left: 15.w, right: 15.w, top: 30.h)
                      : EdgeInsets.symmetric(vertical: 25.h / 2, horizontal: 15.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: todoCardColors[index % todoCardColors.length],
                    ),
                    height: 112.h,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(10.0.sp),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 13.h, right: 15.w),
                                child: Container(
                                  width: 52.sp,
                                  height: 52.sp,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem Ipsum is simply setting industry. ",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: SizedBox(
                                      width: 243.w,
                                      child: Text(
                                        "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                        style: GoogleFonts.quicksand(
                                          letterSpacing: 0,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(84, 84, 84, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "10 July 2023",
                                style: GoogleFonts.quicksand(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0,
                                  color: Color.fromRGBO(132, 132, 132, 1),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.edit, color: Color.fromRGBO(0, 139, 148, 1), size: 14.sp),
                              Icon(Icons.delete_outline, color: Color.fromRGBO(0, 139, 148, 1), size: 14.sp),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
            builder: (context) {
              return SizedBox(
                height: 363.h,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 13.h, left: 15.w, right: 15.w, bottom: 26.h),
                  child: Column(
                    children: [
                      Text(
                        "Create To-Do",
                        style: GoogleFonts.quicksand(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          letterSpacing: 0,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Title",
                          hintStyle: GoogleFonts.quicksand(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(132, 132, 132, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Color.fromRGBO(0, 139, 148, 1),
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 35.sp, color: Colors.white),
      ),
    );
  }
}
