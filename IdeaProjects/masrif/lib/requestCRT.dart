import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masrif/componnents.dart';

class RequestCertificate extends StatefulWidget {
  const RequestCertificate({Key? key}) : super(key: key);

  @override
  State<RequestCertificate> createState() => _RequestCertificateState();
}

class _RequestCertificateState extends State<RequestCertificate> {
  final List<String> items = [
    'Certificate 1',
    'Certificate 2',
    'Certificate 3',
    'Certificate 4',
  ];
  String? selectedValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in items) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: primaryColor,
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return _menuItems;
  }

  List<int> _getDividersIndexes() {
    List<int> _dividersIndexes = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersIndexes.add(i);
      }
    }
    return _dividersIndexes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Certificate Form '),
        backgroundColor: secondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
              ),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  width: 90,
                  height: 90,
                  child: Image.asset('images/NADC_LOGO.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Certificate type :',style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color :secondaryColor,
                    ),),
                  )),
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        dropdownDecoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),

                        ),
                        buttonDecoration: BoxDecoration(
                        color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        isExpanded: true,
                        hint: Text(
                          'Select Certificate Type',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),
                        items: _addDividersAfterItems(items),
                        customItemsIndexes: _getDividersIndexes(),
                        customItemsHeight: 4,
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200],
              ),
              child: TextField(
                cursorColor: primaryColor,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(color: primaryColor, Icons.phone),
                  hintText: 'Phone Number',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200],
              ),
              child: TextField(
                cursorColor: primaryColor,
                decoration: const InputDecoration(
                  icon: Icon(color: primaryColor, Icons.person),
                  hintText: 'Full Name',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200],
              ),
              child: TextField(
                cursorColor: primaryColor,
                decoration: const InputDecoration(
                  icon:
                      Icon(color: primaryColor, Icons.insert_drive_file_sharp),
                  hintText: 'Personal ID',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200],
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: primaryColor,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    color: primaryColor,
                    Icons.visibility,
                  ),
                  hintText: 'Password',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200],
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: primaryColor,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    color: primaryColor,
                    Icons.visibility,
                  ),
                  hintText: 'User Password',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(right: 20, left: 20, top: 50),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: secondaryColor),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
