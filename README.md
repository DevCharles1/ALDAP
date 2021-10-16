# ALDAP
Delivery and Courier Package App
ALDAP means Algorand Delivery and Courier Package Services
The potential to evaluate the level of consumer satisfaction with online courier services is fundamental in determining the success of online commerce. This study aims to identify important things about online courier service quality. 


Aldap is a Cross-Platform(Android & iOS)  Mobile Application using the AlgorandFlutter SDK written in Dart and built on [Flutter](https://flutter.dev/) and others. 
It actualizes several fuctionalities like sending a goods, receive parcels, track parcels, Algo Payment, User Tokenism, Pick Up and many others.

 <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/8.png?raw=true">
</div>



* Algorand Account Fetch
```
	final accountInformation = await algorand.getAccountByAddress(account.publicAddress);
	final amount = information.amountWithoutPendingRewards;
	final pendingRewards = information.pendingRewards;

	AlgorandBalance(
   	 balance: Algo.fromMicroAlgos(amount).toString(),
	),
	algoSendDialog(context, {String uid}) {
  	return showDialog(
    	  context: context,
     	 builder: (context) {
     	   return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          margin: EdgeInsets.all(35),
```

* Location Auth
```
class LocationController extends GetxController {
  static LocationController instance = Get.find();
  RxString userLocation = "".obs;
  RxString userAddress = "".obs;
  Position _currentPosition;
  final box = GetStorage();
  TextEditingController destinationController = TextEditingController();
  TextEditingController pickupLocationController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    _getCurrentLocation();
    _setCustomMapPin();
    _getUserLocation();
  }

  @override
  void onInit() {
    super.onInit();
    _getCurrentLocation();
  }

  _getCurrentLocation() async {
    await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      _currentPosition = position;
      print(_currentPosition);
      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }
  ```
  * App Screenshot
  <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/code2.PNG?raw=true">
  
 <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/codde.PNG?raw=true">
  
  * App Dependencies
  
  <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/code.PNG?raw=true">
  
  # Algorand Wallet

```
final apiKey = 'HF4Gvj8b4y2jzH5fAWCN7aEXD61Hn5ru3HblHcpf';
  final algodClient = AlgodClient(
    apiUrl: PureStake.TESTNET_ALGOD_API_URL,
    apiKey: apiKey,
    tokenKey: PureStake.API_TOKEN_HEADER,
  );

  final indexerClient = IndexerClient(
    apiUrl: PureStake.TESTNET_INDEXER_API_URL,
    apiKey: apiKey,
    tokenKey: PureStake.API_TOKEN_HEADER,
  );

  final algorand = Algorand(
    algodClient: algodClient,
    indexerClient: indexerClient,
  );
```

 <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/11.png?raw=true">
  <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/12.png?raw=true">
   <img src="https://github.com/DevCharles1/ALDAP/blob/main/AppImages/13.png?raw=true">
   

  
