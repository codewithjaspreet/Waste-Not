import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:waste_not/models/food.dart';
import 'package:waste_not/screens/food.dart';

class Meal extends StatelessWidget {
  const Meal({
    Key? key,
    required this.food,
  }) : super(key: key);
  final Map<String,dynamic> food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Get.to(Food(food: food));

        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(12.sp))),
          height: 110.w,
          width: 200.w,
          child: Row(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                  image:  DecorationImage(
                      image: NetworkImage(food['imageUrl']), fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        food['title'].trim().split(' ').first,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 15.sp,
                              )),
                          const Text('2.5')
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [ Text('Serves ${food['quantity']}')],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.yellow,
                          )),
                       Text(food['isActive'] as bool ? 'Active' : 'Inactive'),
                      SizedBox(
                        width: 40.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: .0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16.sp),
                                  bottomRight: Radius.circular(16.sp))),
                          height: 40.h,
                          width: 90.w,
                          child:  const Center(
                            child:  Text(
                              'View More',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
