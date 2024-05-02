import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/inscription.dart';
import 'package:front_mali_event/Screen/Evenement/Home_event.dart';
import 'package:front_mali_event/constants/constant.dart';
import 'package:front_mali_event/models/utilisateur.model.dart';
import 'package:front_mali_event/services/utilisateur.service.dart';

class Otp extends StatefulWidget {
   final String prenom;
  final String nom;
  final String numero;
  final String email;
  final String password;

  const Otp({
    Key? key,
    required this.prenom,
    required this.nom,
    required this.numero,
    required this.email,
    required this.password
  });
  // const Otp({
  //   Key? key,
  //   required String prenom, required String nom, required String numero, required String email, required String password,
  // }) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  




  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();

  String getOtpValue() {
    String otp = "";
    otp += otpController1.text;
    otp += otpController2.text;
    otp += otpController3.text;
    otp += otpController4.text;
    otp += otpController5.text;
    otp += otpController6.text;
    return otp;
  }

  Future<void> signInWithPhoneNumber(String smsCode) async {
      final userService = UtilisateurService();

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: Inscription.verify,
        smsCode: smsCode,
      );
      

       Utilisateur utilisateur = Utilisateur(
          prenom: widget.prenom,
          nom: widget.nom,
          numero: widget.numero,
          email: widget.email,
          password: widget.password, // Assurez-vous de traiter correctement le mot de passe
        );
        userService.add(utilisateur, RoleEnum.admin);

      // Connectez l'utilisateur avec les informations d'identification
      await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const AccueilEvent(),
        ),
      );
    } catch (e) {
      print("Une erreur s'est produite: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
  String nom = widget.nom;
  String prenom = widget.prenom;
  String email = widget.email;
  String numero = widget.numero;
    String password = widget.password;

  print('Nom: $nom');
  print('Prenom: $prenom');
  print('Email: $email');
  print('Numero: $numero');
    print('password: $password');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/illustration-3.png',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(controller: otpController1, first: true, last: false),
                        _textFieldOTP(controller: otpController2, first: false, last: false),
                        _textFieldOTP(controller: otpController3, first: false, last: false),
                        _textFieldOTP(controller: otpController4, first: false, last: false),
                        _textFieldOTP(controller: otpController5, first: false, last: false),
                        _textFieldOTP(controller: otpController6, first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          String code = getOtpValue(); // Obtenez le code OTP entré par l'utilisateur
                          await signInWithPhoneNumber(code);
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verify',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required TextEditingController controller, required bool first, required bool last}) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 1),
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controller,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && !last) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && !first) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.top,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.purple),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
