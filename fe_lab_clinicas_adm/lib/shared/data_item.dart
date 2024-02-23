import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  const DataItem({
    super.key,
    required this.label,
    required this.value,
    this.padding,
  });

  final String label;
  final String value;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    Widget widget = SizedBox(
      width: double.infinity,
      child: Flexible(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(
                color: LabClinicasTheme.blueColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(
                color: LabClinicasTheme.orangeColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
        ),
      ),
    );

    if (padding != null) {
      widget = Padding(
        padding: padding!,
        child: widget,
      );
    }
    return widget;
  }
}
