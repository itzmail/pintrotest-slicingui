import 'package:flutter/material.dart';
import 'package:regist_app/components/appbar_component.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Dokumen',
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          BoxUpload(
            title: "Salinan NSIN",
          ),
          SizedBox(height: 10),
          BoxUpload(
            title: "Salinan Rapot",
          ),
          SizedBox(height: 10),
          BoxUpload(
            title: "Akta Kelahiran",
          ),
          SizedBox(height: 10),
          BoxUpload(
            title: "Kartu Keluarga",
          ),
          SizedBox(height: 10),
        ]),
      ),
    );
  }
}

class BoxUpload extends StatelessWidget {
  final String title;
  const BoxUpload({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.cloud,
                    color: Colors.grey.shade800,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey.shade800)),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.keyboard_arrow_up_outlined,
                      color: Colors.grey.shade800)
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Upload dengan format PDF, PNG, atau JPG\n"
                "Maks ukuran file 2MB",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(246, 248, 255, 1),
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
          child: const Row(
            children: [
              Icon(
                Icons.file_upload_outlined,
                color: const Color.fromRGBO(27, 80, 216, 1),
                size: 20,
              ),
              SizedBox(width: 16),
              Text(
                "Unggah",
                style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromRGBO(27, 80, 216, 1),
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        )
      ]),
    );
  }
}
