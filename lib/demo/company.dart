class Company {
  int id;
  int userId;
  String name;
  String phone;
  String adress;
  Company({
    required this.id,
    required this.userId,
    required this.name,
    required this.phone,
    required this.adress,
  });
}

class CompanyDb {
  List<Company> getCompany() {
    return [
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      Company(id: 1, userId: 1, name: "name", phone: "phone", adress: "adress"),
      
    ];
  }
}
