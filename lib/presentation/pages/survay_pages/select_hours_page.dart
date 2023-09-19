import 'package:class_flutter/presentation/styles/sizes.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SelectHoursPage extends StatefulWidget {
  const SelectHoursPage({super.key});

  @override
  State<SelectHoursPage> createState() => _SelectHoursPageState();
}

class _SelectHoursPageState extends State<SelectHoursPage> {
  SfRangeValues _values = const SfRangeValues(3.0, 7.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.xLargeSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Container(
            child: Text(
              "What are\nyour interests?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: Dimens.xxLargeSize),
              child: SfRangeSlider(
                min: 0,
                max: 10,
                values: _values,
                interval: 1,
                showTicks: false,
                showLabels: true,
                enableTooltip: true,
                stepSize: 1,
                tooltipShape: SfPaddleTooltipShape(),
                minorTicksPerInterval: 1,
                onChanged: (SfRangeValues values) {
                  setState(() {
                    _values = values;
                  });
                },
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
