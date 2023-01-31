import 'package:http/http.dart';

void login(String email, String password) async {
  try {
    Response response = await post(Uri.parse('https://reqres.in/api/register'),
        body: {'email': email, 'password': password});
    if (response.statusCode == 200) {
      print("Account created succefully");
    } else {
      print("failed");
    }
  } catch (e) {
    print(e.toString());
  }
}
