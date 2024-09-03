class ServiceHistory {
  final String title;
  final String subtitle;
  final String image;

  ServiceHistory({
    required this.title,
    required this.subtitle,
    required this.image,
  });
  static List<ServiceHistory> serviceHistoryList = [
    ServiceHistory(
      title: 'Parts sells Service',
      subtitle: 'Booking no: 12345',
      image: 'assets/icons/car_repair.svg',
    ),
    ServiceHistory(
      title: 'Parts sells Service',
      subtitle: 'Booking no: 123456',
      image: 'assets/icons/oil.svg',
    ),
    ServiceHistory(
      title: 'Parts sells Service',
      subtitle: 'Booking no: 123456',
      image: 'assets/icons/spring.svg',
    ),
    ServiceHistory(
      title: 'Parts sells Service',
      subtitle: 'Booking no: 123456',
      image: 'assets/icons/driving.svg',
    ),
    ServiceHistory(
      title: 'Parts sells Service',
      subtitle: 'Booking no: 123456',
      image: 'assets/icons/gas.svg',
    ),
  ];
}
