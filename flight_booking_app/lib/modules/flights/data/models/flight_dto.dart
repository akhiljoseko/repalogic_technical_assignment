/// Data Transfer Objects for Flight API
class FlightDto {
  FlightDto({
    required this.id,
    required this.airline,
    required this.flightNumber,
    required this.departureTime,
    required this.arrivalTime,
    required this.origin,
    required this.destination,
    required this.price,
  });

  final int id;
  final AirlineDto airline;
  final String flightNumber;
  final DateTime departureTime;
  final DateTime arrivalTime;
  final AirportDto origin;
  final AirportDto destination;
  final double price;
}

class AirlineDto {
  const AirlineDto({
    required this.name,
    required this.code,
  });

  final String name;
  final String code;
}

class AirportDto {
  const AirportDto({
    required this.code,
    required this.city,
    required this.country,
    required this.name,
  });

  final String code;
  final String city;
  final String country;
  final String name;
}

class PassengerDto {
  const PassengerDto({
    required this.name,
    required this.passportNumber,
  });

  final String name;
  final String passportNumber;
}
