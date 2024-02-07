import 'package:bookland_admin_panel_web/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';

class SelectMenuField extends StatelessWidget {
  SelectMenuField({
    required this.onTap,
    required this.fieldName,
    Key? key,
  }) : super(key: key);
  final Function() onTap;
  final String fieldName;
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return SizedBox(
      height: h(context) * .075,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(
            fieldName,
            textAlign: TextAlign.end,
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Obx(
              () => Container(
                height: h(context) * .05,
                decoration: BoxDecoration(
                  color: homeController.isUnitTabOpen.value
                      ? Colors.white
                      : Colors.amber,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: homeController.isUnitTabOpen.value
                          ? const Icon(
                              Icons.arrow_drop_up_rounded,
                              size: 30,
                            )
                          : const Icon(
                              Icons.arrow_drop_down_rounded,
                              size: 30,
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
