import 'package:esim/widgets/purchase_hostory/plan_container.dart';
import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  const Plan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PlanContainer(),
            SizedBox(
              height: 20,
            ),
            PlanContainer(),
            SizedBox(
              height: 20,
            ),
            PlanContainer(),
            SizedBox(
              height: 20,
            ),
            PlanContainer(),
            SizedBox(
              height: 20,
            ),
            PlanContainer(),
          ],
        ),
      ),
    );
  }
}
