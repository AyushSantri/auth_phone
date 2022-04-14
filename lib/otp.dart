import 'package:atm_auth/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  final String phone;
  const OtpScreen({Key? key, required this.phone}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    _verifyPhone();
    super.initState();
  }

  _verifyPhone() async {
    _confirmationResult =
        await FirebaseAuth.instance.signInWithPhoneNumber("+91${widget.phone}");
  }

  _confirmVerification() async {
    await _confirmationResult.confirm(_controller.text).then((value) {
      User? user = value.user;
      if (user != null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
            (route) => false);
      } else {
        // return ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text("Invalid OTP")));
        AlertDialog(
          title: Text("invalid"),
        );
      }
    });
  }

  late ConfirmationResult _confirmationResult;
  late String _verificationCode;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("OTP Verification"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Center(
              child: Text(
                "Verify +91-${widget.phone}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "OTP",
                ),
                maxLength: 6,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _confirmVerification();
                });
              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
