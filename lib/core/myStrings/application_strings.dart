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
  final String mail = 'Mail';
  final String password = 'Şifrə';
  final String already = 'Artıq bir hesabınız var mı ?';
  final String companyName = 'Şirkət adı';
  final String name = 'Adınız';
  final String phone = 'Telefon nömrəniz';
}
