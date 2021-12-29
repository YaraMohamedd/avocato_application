
import 'package:avocato_application/Models/profile_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_value/shared_value.dart';

class ProfileRepository{
  SharedValue<String> access_token = SharedValue(
    value: "", // initial value
    key: "access_token", // disk storage key for shared_preferences
    autosave: true, // autosave to shared prefs when value changes
  );
  Future<ProfileResponse> getProfileCountersResponse() async {
    final response = await http.post( Uri.parse('https://www.softat4you.xyz/api/getuserinfo'),
      headers: {
        "Authorization": "Bearer ${access_token}"
      },
    );
    return ProfileFromJson(response.body);
  }
}
