class Datamodel {
  String title;
  String subtitle;
  String price;
  String address;

  String distance;
  String image;
 
  Datamodel({
 required this.title,
 required this.subtitle,
 required this.address,
required this.image,
  required this.price,
  required this.distance,
   
  
   
  });

 static List<Datamodel> datalist = [
    Datamodel(
      title: 'Oil Change',
      subtitle:'Special Point',
      image: 'assets/images/6.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Oil Change',
      subtitle:'Special Point',
      image: 'assets/images/7.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Conventional oil',
      subtitle:'Change Shop',
      image: 'assets/images/8.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: '1. Manor Auto',
      subtitle:'Service Center Inc' ,
      image: 'assets/images/9.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Manor Auto',
      subtitle: 'Service Center Inc',
      image: 'assets/images/5.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Manor Auto',
      subtitle: 'Service Center Inc',
      image: 'assets/images/10.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Manor Auto',
      subtitle: 'Service Center Inc',
      image: 'assets/images/11.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Manor Auto',
      subtitle: 'Service Center Inc',
      image: 'assets/images/12.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Manor Auto',
      subtitle: 'Service Center Inc',
      image: 'assets/images/1.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    Datamodel(
      title: 'Oil Change',
      subtitle: 'Special Point',
      image: 'assets/images/1.png',
      price: "\$\$\$",
      address: 'from your location',
      distance: '2 ml',

  
    ),
    
    
    ];
}