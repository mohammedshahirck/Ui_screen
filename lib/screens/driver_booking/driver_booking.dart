import 'package:flutter/material.dart';
import 'package:ui_page/helpers/size/size.dart';
import 'package:ui_page/helpers/textstyle.dart';
import 'package:ui_page/screens/widgets/booking_option.dart';
import 'package:ui_page/screens/widgets/drop_down.dart';
import 'package:ui_page/screens/widgets/radio.dart';
import 'package:ui_page/screens/widgets/search_field.dart';
import 'package:ui_page/screens/widgets/time_field.dart';

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
              width: MediaQuery.of(context).size.width * .95,
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
            Container(
              margin: EdgeInsets.all(16),
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
            // const Dropdwnn(),
            Ksize.ksize20,
            Container(
              height: MediaQuery.of(context).size.height * .078,
              width: double.infinity,
              color: const Color(0xffF2E8FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .058,
                    width: MediaQuery.of(context).size.width * .45,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: const Color(0xffFF7373),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        showbottomSheet(context);
                      },
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text(
                        'ONE WAY',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .058,
                    width: MediaQuery.of(context).size.width * .45,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: const Color(0xffFF7373),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        showbottomSheet(context);
                      },
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text(
                        'ROUND WAY',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showbottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * .32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ksize.ksize10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pay Out',
                        style: Tstyles.greycolor16,
                      ),
                      Text(
                        'Pay out your balance',
                        style: Tstyles.greycolor,
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text('VIEW PRICING', style: Tstyles.theamHeading),
                          Container(
                            height: 1,
                            width: 100,
                            color: const Color(0xffFF7373),
                          ),
                        ],
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RS:7563',
                    style: Tstyles.priceTheame,
                  )
                ],
              ),
              Ksize.ksize20,
              Text(
                'Pickup location : Bus Stand Delhi',
                style: Tstyles.greycolor16,
              ),
              Ksize.ksize10,
              Text(
                'Destination location: Railway Station Delhi',
                style: Tstyles.greycolor16,
              ),
              Ksize.ksize10,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color(0xffFF7373),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Book Driver',
                    style: Tstyles.hometitle,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: Tstyles.heading,
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
