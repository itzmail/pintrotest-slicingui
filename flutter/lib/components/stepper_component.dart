import 'package:flutter/material.dart';

class CustomVerticalStepper extends StatelessWidget {
  final int currentStep;

  const CustomVerticalStepper({
    Key? key,
    this.currentStep = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStep(
            title: 'Pelaksanaan Observasi / Test Masuk',
            index: 0,
            isFirst: true,
          ),
          _buildStep(
            title: 'Proses Pembayaran Formulir dan Biaya Observasi',
            index: 1,
          ),
          _buildStep(
            title: 'Pengumuman Hasil Observasi / Test Masuk',
            index: 2,
          ),
          _buildStep(
            title: 'Proses Daftar Ulang',
            index: 3,
          ),
          _buildStep(
            title: 'Proses Pembayaran Uang Pangkal',
            index: 4,
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildStep({
    required String title,
    required int index,
    bool isFirst = false,
    bool isLast = false,
  }) {
    final isActive = index <= currentStep;
    final isCurrentStep = index == currentStep;

    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: Column(
              children: [
                if (!isFirst)
                  Expanded(
                    child: VerticalDivider(
                      color: index <= currentStep
                          ? const Color.fromRGBO(27, 80, 216, 1)
                          : Colors.grey.shade300,
                      thickness: 2,
                    ),
                  ),
                isCurrentStep
                    ? _buildCurrentStepDot()
                    : _buildStepDot(isActive: isActive),
                if (!isLast)
                  Expanded(
                    child: VerticalDivider(
                      color: index < currentStep
                          ? const Color.fromRGBO(27, 80, 216, 1)
                          : Colors.grey.shade300,
                      thickness: 2,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: !isLast ? Colors.grey.shade300 : Colors.transparent,
                  width: 1,
                ),
              )),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: isCurrentStep ? 16 : 14,
                  color: isActive ? Colors.black87 : Colors.grey,
                  fontWeight:
                      isCurrentStep ? FontWeight.w800 : FontWeight.normal,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepDot({required bool isActive}) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromRGBO(27, 80, 216, 1)
            : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildCurrentStepDot() {
    return Container(
      width: 16,
      height: 16,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(27, 80, 216, 1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 14,
          height: 14,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(27, 80, 216, 1),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
