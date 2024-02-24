import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  int month = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: context.primaryContainer,
        title: SizedBox(
            width: pixel50,
            child: Image.asset(
              ImageAssets.smallLogo,
            )),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(pixel16),
        child: Column(
          children: [
            Text(
              "ATTENDANCE",
              textAlign: TextAlign.center,
              style: context.titleLarge?.copyWith(color: context.primary),
            ),
            height16,
            Text(
              getMonth(month),
              style: context.displaySmall?.copyWith(color: const Color(0xff6864e3)),
            ),
            height16,
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              availableCalendarFormats: const {CalendarFormat.month: 'Month'},
              headerVisible: false,
              onPageChanged: (date) {
                // setState(() {
                //   month = date.month;
                // });
              },
              calendarStyle: CalendarStyle(
                defaultTextStyle: context.titleLarge!,
                weekendTextStyle: context.titleLarge!,
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: context.titleLarge!,
                weekendStyle: context.titleLarge!,
                dowTextFormatter: (date, locale) {
                  switch (date.weekday) {
                    case 1:
                      return "M";
                    case 2:
                      return "T";
                    case 3:
                      return "W";
                    case 4:
                      return "T";
                    case 5:
                      return "F";
                    case 6:
                      return "S";
                    case 7:
                      return "S";
                    default:
                      return "N";
                  }
                },
              ),
            ),
            height24,
            Text(
              "PRESENT :      30 Days",
              style: context.titleLarge,
            ),
            height10,
            Text(
              "ABSENT :      01 Days",
              style: context.titleLarge,
            )
          ],
        ),
      ),
    );
  }

  String getMonth(int month) {
    switch (month) {
      case 0:
        return "January";
      case 1:
        return "February";
      case 2:
        return "March";
      case 3:
        return "April";
      case 4:
        return "May";
      case 5:
        return "June";
      case 6:
        return "July";
      case 7:
        return "August";
      case 8:
        return "September";
      case 9:
        return "October";
      case 10:
        return "November";
      case 11:
        return "December";
      default:
        return "Invalid month";
    }
  }
}
