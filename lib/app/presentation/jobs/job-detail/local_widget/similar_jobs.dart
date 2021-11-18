import 'package:flutter/material.dart';
import 'package:gotaf/app/core/widgets/job_card_view_fixed_size.dart';

class SimilarJobWidget extends StatelessWidget {
  SimilarJobWidget();

  final List<JobCardFixed> _list = [
    JobCardFixed(),
    JobCardFixed(),
    JobCardFixed(),
    JobCardFixed(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _list.map((e) => e).toList(),
      ),
    );
  }
}
