import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue1 = 'One';

  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  var textValue = "Selected Value: ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              DropdownButton(
                value: dropdownValue1,
                isExpanded: true,
                menuMaxHeight: 300,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue1 = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 30,
              ),
              InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isDense: true,
                    isExpanded: true,
                    menuMaxHeight: 300,
                    elevation: 6,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),

                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                        textValue = "Selected Value is : $dropdownvalue";
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("$textValue"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Selected Value is : $dropdownvalue");
                    setState(() {
                      textValue = "Selected Value is : $dropdownvalue";
                    });
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
