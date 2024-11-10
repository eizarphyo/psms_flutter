import 'package:flutter/material.dart';
import 'package:psms/utils/colors.dart';

class AddNewDialog extends StatefulWidget {
  const AddNewDialog({super.key});

  @override
  State<AddNewDialog> createState() => _AddNewDialogState();
}

class _AddNewDialogState extends State<AddNewDialog> {
  final TextEditingController _phoneNoCtl = TextEditingController();
  final TextEditingController _nameCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("New Voucher"),
      ),
      body: Padding(
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
                      // overflow: TextOverflow.ellipsis,
                    ),
                    decoration: InputDecoration(
                        hintText: "Phone",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: primaryColor.shade200,
                        ),
                        filled: true,
                        fillColor: primaryColor.shade50,
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: mediaWidth * 0.5,
                  child: TextField(
                    controller: _nameCtl,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: "Name",
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
