import 'package:flutter/material.dart';
import 'package:ui_page/helpers/size/size.dart';
import 'package:ui_page/helpers/textstyle.dart';

import 'package:ui_page/screens/widgets/booking_option.dart';
import 'package:ui_page/screens/widgets/drop_down.dart';
import 'package:ui_page/screens/widgets/radio.dart';

class DriverBooking extends StatefulWidget {
  const DriverBooking({super.key});

  @override
  State<DriverBooking> createState() => _DriverBookingState();
}

class _DriverBookingState extends State<DriverBooking> {
  int values = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .11,
                  color: const Color(0xffFF7373),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 70, left: 25),
                  width: 350,
                  padding: const EdgeInsets.only(left: 10),
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: .5,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Vijay Nagar,Indore',
                      hintStyle: Tstyles.greycolor16,
                      border: InputBorder.none,
                      icon:
                          Icon(Icons.location_on, color: Colors.grey.shade700),
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    leading: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: const Text('Book Your Driver'),
                  ),
                ),
              ],
            ),
            Ksize.ksize20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyRadioButton(
                  gruopValue: values,
                  value: 1,
                  onchanged: (value) {
                    setState(
                      () => values = value!,
                    );
                  },
                  title: 'In City',
                ),
                MyRadioButton(
                  gruopValue: values,
                  value: 2,
                  onchanged: (value) {
                    setState(
                      () => values = value!,
                    );
                  },
                  title: 'Monthly Package',
                ),
                MyRadioButton(
                  gruopValue: values,
                  value: 3,
                  onchanged: (value) {
                    setState(
                      () => values = value!,
                    );
                  },
                  title: 'Out Station',
                )
              ],
            ),
            Ksize.ksize10,
            const SearchTextfield(
              hinttext: 'Enter Your Pickup location',
              leadingicon: Icons.search,
            ),
            const SearchTextfield(
              hinttext: 'Enter destination loction',
              leadingicon: Icons.search,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 370,
              padding: const EdgeInsets.only(left: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Select Date',
                    hintStyle: Tstyles.greycolor16,
                    border: InputBorder.none,
                    suffixIcon: const Icon(Icons.calendar_month)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Time',
                    style: Tstyles.greycolor16,
                  ),
                  Ksize.ksize20,
                  Row(
                    children: [
                      Text(
                        'From:',
                        style: Tstyles.greycolor,
                      ),
                      const TimeField(
                        hint: '02:55AM',
                      ),
                      Ksize.kWsize10,
                      Text(
                        'To:',
                        style: Tstyles.greycolor,
                      ),
                      Ksize.kWsize10,
                      const TimeField(
                        hint: '4:55PM',
                      )
                    ],
                  ),
                  Ksize.ksize20,
                  Text(
                    'Estimated Ride Time: 2.30hr',
                    style: Tstyles.theamHeading,
                  ),
                ],
              ),
            ),
            Ksize.ksize20,
            const RadioButton(),
            const DropDown(),
            Ksize.ksize40,
            Container(
              height: 80,
              width: double.infinity,
              color: Color(0xffF2E8FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    color: Color(0xffFF7373),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.arrow_forward), Text('ONE WAY')],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    color: Color(0xffFF7373),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.arrow_forward), Text('ONE WAY')],
                    ),
                  ),
                  // ElevatedButton.icon(
                  //   onPressed: () {},
                  //   // style: ButtonStyle(  backgroundColor:MaterialStateProperty.lerp(a, b, t, (p0, p1, p2) => null)),
                  //   icon: const Icon(Icons.arrow_forward),
                  //   label: Text('ONE WAy'),
                  // ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                    label: Text('ROUND TRIP'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimeField extends StatelessWidget {
  const TimeField({
    super.key,
    this.hint,
  });
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * .3,
      padding: const EdgeInsets.only(left: 20),
      height: 45,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Tstyles.greycolor16,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    super.key,
    required this.hinttext,
    this.leadingicon,
    this.actionIcon,
  });
  final String hinttext;
  final IconData? leadingicon;
  final IconData? actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            hintText: hinttext,
            border: InputBorder.none,
            suffixIcon: Icon(actionIcon),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(leadingicon),
            )),
      ),
    );
  }
}
