class AddressEntity {
  final String street;
  final String suite;
  final String city;
  final String lat;
  final String lng;

  AddressEntity({
    required this.street,
    required this.suite,
    required this.city,
    required this.lat,
    required this.lng,
  });

  factory AddressEntity.fromJson(Map<String, dynamic> json) {
    return AddressEntity(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      lat: json['geo']['lat'],
      lng: json['geo']['lng'],
    );
  }
}
