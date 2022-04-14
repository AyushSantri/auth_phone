import 'package:atm_auth/otp.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "phone number",
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text("+91"),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width / 8,
              height: 35,
              child: FlatButton(
                color: Colors.blue,
                child: const Text(
                  "Verify",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          OtpScreen(phone: _controller.text)));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
