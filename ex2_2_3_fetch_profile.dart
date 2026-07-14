import 'dart:async';

Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception("userId ไม่ถูกต้อง");
  }

  return {"id": userId, "name": "สมชาย", "age": 20};
}

Future<void> main() async {
  try {
    var profile = await fetchProfile(1);
    print("ข้อมูลผู้ใช้: $profile");
  } catch (e) {
    print("เกิดข้อผิดพลาด: $e");
  } finally {
    print("สิ้นสุดการทำงาน");
  }

  print("----------------");

  try {
    var profile = await fetchProfile(0);
    print(profile);
  } catch (e) {
    print("เกิดข้อผิดพลาด: $e");
  } finally {
    print("สิ้นสุดการทำงาน");
  }
}
