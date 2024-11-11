import 'package:flutter/material.dart';
import 'package:psms/utils/colors.dart';

import '../utils/input_decorations.dart';

class AddNewDialog extends StatefulWidget {
  const AddNewDialog({super.key});

  @override
  State<AddNewDialog> createState() => _AddNewDialogState();
}

class _AddNewDialogState extends State<AddNewDialog> {
  final TextEditingController _phoneNoCtl = TextEditingController();
  final TextEditingController _nameCtl = TextEditingController();
  final TextEditingController _modelCtl = TextEditingController();
  final TextEditingController _brandCtl = TextEditingController();
  final TextEditingController _colorCtl = TextEditingController();

  String? _passwordType;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("New Voucher"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: mediaWidth * 0.06, horizontal: mediaWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Customer Information",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: mediaWidth * 0.35,
                    child: TextField(
                      controller: _phoneNoCtl,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryColor.shade400,
                      ),
                      decoration: customInputDecoration(hintText: "Phone"),
                    ),
                  ),
                  SizedBox(
                    width: mediaWidth * 0.5,
                    child: TextField(
                      controller: _nameCtl,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryColor.shade400,
                      ),
                      decoration: customInputDecoration(hintText: "Name"),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Text(
                  "Device Information",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: mediaWidth * 0.5,
                    child: TextField(
                      controller: _brandCtl,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryColor.shade400,
                      ),
                      decoration: customInputDecoration(hintText: "Brand"),
                    ),
                  ),
                  SizedBox(
                    width: mediaWidth * 0.35,
                    child: TextField(
                      controller: _colorCtl,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryColor.shade400,
                      ),
                      decoration: customInputDecoration(hintText: "Color"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: TextField(
                  controller: _modelCtl,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor.shade400,
                  ),
                  decoration: customInputDecoration(
                      hintText: "Model",
                      suffixIcon: const Icon(Icons.device_hub)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "Customer Information",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  DropdownButton(
                      value: _passwordType,
                      iconSize: 35,
                      iconEnabledColor: primaryColor,
                      dropdownColor: primaryColor.shade50,
                      hint: const Text("Password Type"),
                      items: const [
                        DropdownMenuItem(
                          value: "pin",
                          child: Text("Pin"),
                        ),
                        DropdownMenuItem(
                          value: "password",
                          child: Text("Password"),
                        ),
                        DropdownMenuItem(
                          value: "none",
                          child: Text("None"),
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          _passwordType = value;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
