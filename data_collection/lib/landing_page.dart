import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String? _selectedPlace;
  bool _showOtherPlaceTextField = false;
  final TextEditingController _otherPlaceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenditure Tracker'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate back to login page
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        color: Colors.amber, // Setting background color to mustard color
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.0, // Set the minimum height here
                  child: Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      // Adding margin from left and right
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Setting background color to white
                        borderRadius: BorderRadius.circular(
                            10.0), // Adding rounded borders
                      ),
                      child: TextField(
                        controller: _descriptionController,
                        maxLines: null, // Allow unlimited number of lines
                        decoration: const InputDecoration(
                          hintText: 'Enter purpose of expenditure',
                          border: InputBorder.none, // Removing default border
                          contentPadding:
                              EdgeInsets.all(16.0), // Adding padding
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Adding margin from left and right
                  decoration: BoxDecoration(
                    color: Colors.white, // Setting background color to white
                    borderRadius:
                        BorderRadius.circular(10.0), // Adding rounded borders
                  ),
                  child: DropdownButtonFormField<String>(
                    value: _selectedPlace,
                    decoration: const InputDecoration(
                      hintText: 'Select place of expenditure',
                      // Adjusted placeholder text
                      border: InputBorder.none,
                      // Removing default border
                      contentPadding: EdgeInsets.all(16.0), // Adding padding
                    ),
                    items: [
                      'Sukhram',
                      'Mithas',
                      'Veerji',
                      'Sector 18',
                      'Zomato',
                      'Swiggi',
                      'Other'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedPlace = newValue;
                        if (newValue == 'Other') {
                          _showOtherPlaceTextField = true;
                        } else {
                          _showOtherPlaceTextField = false;
                        }
                      });
                    },
                  ),
                ),
                if (_showOtherPlaceTextField) const SizedBox(height: 10),
                if (_showOtherPlaceTextField)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    // Adding margin from left and right
                    decoration: BoxDecoration(
                      color: Colors.white, // Setting background color to white
                      borderRadius:
                          BorderRadius.circular(10.0), // Adding rounded borders
                    ),
                    child: TextField(
                      controller: _otherPlaceController,
                      decoration: const InputDecoration(
                        hintText: 'Enter other place',
                        border: InputBorder.none, // Removing default border
                        contentPadding: EdgeInsets.all(16.0), // Adding padding
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  // Adding margin from left and right
                  decoration: BoxDecoration(
                    color: Colors.white, // Setting background color to white
                    borderRadius:
                        BorderRadius.circular(10.0), // Adding rounded borders
                  ),
                  child: TextField(
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Enter amount',
                      border: InputBorder.none, // Removing default border
                      contentPadding: EdgeInsets.all(16.0), // Adding padding
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Printing all the values in console
                    if (kDebugMode) {
                      print('Description: ${_descriptionController.text}');

                      if (_selectedPlace == 'Other') {
                        print('Selected Place: ${_otherPlaceController.text}');
                      } else {
                        print('Selected Place: $_selectedPlace');
                      }
                      print('Price: ${_priceController.text}');
                    }
                    _descriptionController.clear();
                    _otherPlaceController.clear();
                    _priceController.clear();
                    _selectedPlace = null;
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
