import 'dart:async';

void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (message) {
      print("แจ้งเตือน: $message");
    },
    onDone: () {
      print("สตรีมสิ้นสุด");
    },
  );

  controller.add("มีข้อความใหม่");
  controller.add("มีอีเมลใหม่");
  controller.add("ดาวน์โหลดเสร็จ");

  controller.close();
}
