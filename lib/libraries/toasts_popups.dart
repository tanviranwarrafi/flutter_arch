import 'package:app/constants/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPopup {
  void toastMessage({required String message, required bool isTop}) {
    var length = Toast.LENGTH_LONG;
    var gravity = isTop ? ToastGravity.TOP : ToastGravity.BOTTOM;
    Fluttertoast.showToast(msg: message, textColor: grey, fontSize: 16, toastLength: length, backgroundColor: grey, gravity: gravity);
  }

  void successToast({required String message, required bool isTop}) {
    var length = Toast.LENGTH_LONG;
    var gravity = isTop ? ToastGravity.TOP : ToastGravity.BOTTOM;
    Fluttertoast.showToast(msg: message, textColor: green, fontSize: 16, backgroundColor: green, toastLength: length, gravity: gravity);
  }

  void warningToast({required String message, required bool isTop}) {
    var length = Toast.LENGTH_LONG;
    var gravity = isTop ? ToastGravity.TOP : ToastGravity.BOTTOM;
    Fluttertoast.showToast(msg: message, textColor: yellow, fontSize: 16, backgroundColor: yellow, toastLength: length, gravity: gravity);
  }

  void errorToast({required String message, required bool isTop}) {
    var length = Toast.LENGTH_LONG;
    var gravity = isTop ? ToastGravity.TOP : ToastGravity.BOTTOM;
    Fluttertoast.showToast(msg: message, textColor: red, fontSize: 16, backgroundColor: red, toastLength: length, gravity: gravity);
  }
}
