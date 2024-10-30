import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:regist_app/components/appbar_component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regist_app/components/stepper_component.dart';
import 'package:regist_app/router/router.dart';

class RegistrationScreen extends StatelessWidget {
  final int activeStep = 0;
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          title: 'Pendaftaran',
          leading: IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.xmark))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              const Text("Hallo, firdaus",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
              Image.asset(
                "assets/images/waving-hand.png",
                width: 40,
                height: 40,
              )
            ]),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Kamu telah menyelesaiakan pembayaran Uang Formulir, silahkan lengkapi data dan ikuti Test/Observasi sesuai jadwal",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(27, 80, 216, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/mission.png",
                          width: 35, height: 35),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Jadwal ujian seleksi",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Klik di sini untuk melihat jadwal",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_circle_right,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Lengkapi administrasi",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: BoxMenuRegist(
                          image: "assets/images/documents.png",
                          title: "Berkas dokumen",
                          description:
                              "Yuk, jangan lupa isi berkas pendaftaran",
                          onTap: () {
                            context.pushNamed(RoutePath.document.name);
                          },
                        )),
                    const SizedBox(width: 16),
                    const Flexible(
                        fit: FlexFit.tight,
                        child: BoxMenuRegist(
                          image: "assets/images/profile.png",
                          title: "Biodata Peserta",
                          description:
                              "Biodata lengkap, proses daftar jadi lebih tanggap",
                        ))
                  ],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Proses pendaftaran",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800)),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ]),
                          child: const Icon(
                            FontAwesomeIcons.print,
                            color: Colors.black,
                            size: 20,
                          ),
                        ))
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: const SizedBox(
                  width: double.infinity,
                  child: CustomVerticalStepper(
                    currentStep: 1,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class BoxMenuRegist extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback? onTap;
  const BoxMenuRegist({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(image, width: 35, height: 35),
          const SizedBox(height: 8),
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          )
        ]),
      ),
    );
  }
}
