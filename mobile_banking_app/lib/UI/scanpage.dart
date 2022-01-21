
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR স্ক্যান"),
        centerTitle: true,
      ),
        body: _buildQrView(context),


    );
  }
}

Widget _buildQrView(BuildContext context) {
  // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
  var scanArea = (MediaQuery.of(context).size.width < 400 ||
      MediaQuery.of(context).size.height < 400)
      ? 150.0
      : 300.0;
  // To ensure the Scanner view is properly sizes after rotation
  // we need to listen for Flutter SizeChanged notification and update controller
  return QRView(
    // key: qrKey,
    // onQRViewCreated: _onQRViewCreated,
    overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea), key: Key("value"), onQRViewCreated: (QRViewController ) {  } ,
    // onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
  );
}