import 'package:get/get.dart';

class HomeController extends GetxController {
  var title = "E Ticket".obs;

  var isLoading = false.obs;

  var items = [].obs;

  void fetchData() async {
    isLoading(true); 
    try {
      await Future.delayed(Duration(seconds: 2));
      items.value = [
        'Ticket 1',
        'Ticket 2',
        'Ticket 3'
      ];
    } catch (e) {
      print("Error fetching data: $e");
    } finally {
      isLoading(false); 
    }
  }

  void navigateToDetails(String item) {
  
    Get.toNamed('/ticketDetails', arguments: item);
  }
}
