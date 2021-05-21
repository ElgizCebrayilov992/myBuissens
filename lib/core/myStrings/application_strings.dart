


class ApplicationStrings {
  static ApplicationStrings? _instace;
  static ApplicationStrings get instance {
    if (_instace != null) return _instace!;
    _instace = ApplicationStrings._init();
    return _instace!;
  }

  ApplicationStrings._init();
  final String loginButton = 'Giriş';
  final String registerButton = 'Qeydiyyat';
  final String registerNow = 'Qeydiyyatdan keç';
  final String forgotPassword = 'Şifrəni unutmusunuz ?';
  final String dontHave = 'Hesabınız yoxdur ?';
  final String mail = 'Email';
  final String password = 'Şifrə';
  final String already = 'Artıq bir hesabınız var mı ?';
  final String companyName = 'Şirkət adı';
  
  final String name = 'Adınız';
  
  final String phone = 'Telefon nömrəniz';
   final String search = 'Yoxla';
  //enum
   final String facebook = 'Facebook';
   final String call = 'Zəng';
   final String whatsapp = 'Whatsapp';
   final String telegram = 'Telegram';
  final String email = 'Email';
  final String contactMail = 'Əlaqə vasitəsini yazın';

  //Dashboard
  //'Ana Səhifə'
final String dashBoardMenu = 'Ana Səhifə';
//"My Files"
final String myFiles = 'Ümumi məlumat';

//menu strings
final String home = 'Ana Səhifə';
final String sale = 'Satış';
final String customer = 'Müştərilər';
final String company = 'Şirkətlər';
final String depo = 'Depolar';
final String measure = 'Ölçü vahidləri';
final String convert = 'Alış-satış vahidləri';
final String documentType = 'Sənəd tipləri';
final String product = 'Məhsullar';
final String settings = 'Parametrler';
final String about = 'Haqqımızda';

final String totalCustomerProduct = 'Anbarda məhsul sayı';

final String totalCustomerCustomer = 'Ümumi müştəri sayı';
final String totalCustomerCompany = 'Ümumi şirkətlər sayı';
final String recentFileTitle = 'Satış tarixcəsi';
final String recentTableNo = 'No:';
final String recentTableProductName = 'Məhsul adı';
final String recentTablePrice = 'Qiymət';
final String recentTableWhom = 'Kimə';
final String recentTableTime = 'Tarix';

final String totalPrice = 'Ümumi satış';
final String totalPriceDaySale = 'Günlük satış';
final String totalPriceMonthSale = 'Aylıq satış';

}
