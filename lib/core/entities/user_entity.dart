import 'address_entity.dart';

class UserEntity {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressEntity addressEntity;

  UserEntity({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.addressEntity,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      addressEntity: AddressEntity.fromJson(json['address']),
    );
  }
}
