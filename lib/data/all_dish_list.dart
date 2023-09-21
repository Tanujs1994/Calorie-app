class Dish{

  String name;
  bool isVeg;
  String url;

  Dish({required this.name, required this.isVeg, required this.url});

}

List<Dish> allDishes = [
  Dish(name: "Shahi Paneer", isVeg: true, url: 'https://1.bp.blogspot.com/-KzKj1aBe7-k/XeeVsF5b-2I/AAAAAAAAEII/XOksle75D5IKvng5l7OMWaX9K_0hCQX7wCLcBGAsYHQ/s1600/shahi%2Bpaneerr.jpg'),
  Dish(name: "Matar Paneer", isVeg: true, url: 'https://www.funfoodfrolic.com/wp-content/uploads/2020/08/Matar-Paneer-Thumbnail.jpg'),
  Dish(name: "Kadhai Paneer", isVeg: true, url: 'https://th.bing.com/th/id/R.bd3bebefc9c487be69288356c1f91bc3?rik=k7pLmnD0SZHj3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f_GlkYxavu-Ts%2fStVnaw3GCJI%2fAAAAAAAAARM%2f2b3PenJbX7g%2fw1200-h630-p-k-no-nu%2fkadhai-paneer1.JPG&ehk=cV8BbwTCA5w3uoi3WVFzHWk5mUSSCKvYjyARLvPOPaA%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
  Dish(name: "Chole",     isVeg: true, url: 'https://th.bing.com/th/id/R.bd3bebefc9c487be69288356c1f91bc3?rik=k7pLmnD0SZHj3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f_GlkYxavu-Ts%2fStVnaw3GCJI%2fAAAAAAAAARM%2f2b3PenJbX7g%2fw1200-h630-p-k-no-nu%2fkadhai-paneer1.JPG&ehk=cV8BbwTCA5w3uoi3WVFzHWk5mUSSCKvYjyARLvPOPaA%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
  Dish(name: "Rajma", isVeg: true, url: 'https://th.bing.com/th/id/R.bd3bebefc9c487be69288356c1f91bc3?rik=k7pLmnD0SZHj3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f_GlkYxavu-Ts%2fStVnaw3GCJI%2fAAAAAAAAARM%2f2b3PenJbX7g%2fw1200-h630-p-k-no-nu%2fkadhai-paneer1.JPG&ehk=cV8BbwTCA5w3uoi3WVFzHWk5mUSSCKvYjyARLvPOPaA%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
  Dish(name: "MIX Veg", isVeg: true, url: 'https://th.bing.com/th/id/R.bd3bebefc9c487be69288356c1f91bc3?rik=k7pLmnD0SZHj3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f_GlkYxavu-Ts%2fStVnaw3GCJI%2fAAAAAAAAARM%2f2b3PenJbX7g%2fw1200-h630-p-k-no-nu%2fkadhai-paneer1.JPG&ehk=cV8BbwTCA5w3uoi3WVFzHWk5mUSSCKvYjyARLvPOPaA%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
  Dish(name: "Kadi pakodi", isVeg: true, url: 'https://th.bing.com/th/id/R.bd3bebefc9c487be69288356c1f91bc3?rik=k7pLmnD0SZHj3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f_GlkYxavu-Ts%2fStVnaw3GCJI%2fAAAAAAAAARM%2f2b3PenJbX7g%2fw1200-h630-p-k-no-nu%2fkadhai-paneer1.JPG&ehk=cV8BbwTCA5w3uoi3WVFzHWk5mUSSCKvYjyARLvPOPaA%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
  Dish(name: "Rayta", isVeg: true, url: 'https://th.bing.com/th/id/R.bd3bebefc9c487be69288356c1f91bc3?rik=k7pLmnD0SZHj3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f_GlkYxavu-Ts%2fStVnaw3GCJI%2fAAAAAAAAARM%2f2b3PenJbX7g%2fw1200-h630-p-k-no-nu%2fkadhai-paneer1.JPG&ehk=cV8BbwTCA5w3uoi3WVFzHWk5mUSSCKvYjyARLvPOPaA%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
];

//  MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          // cardTitle: 'Shahi Paneer', 
          // cardSubtitle: 'Paneer'),

          //  MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          // cardTitle: 'Shahi Paneer', 
          // cardSubtitle: 'Paneer'),

          //  MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          // cardTitle: 'Shahi Paneer', 
          // cardSubtitle: 'Paneer'),
         
          // Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/mixveg.jpg'),
          //     title: Text('Mix Veg'),
          //     subtitle: Text('vegetable'),
          //   ),
          // ),
          //  Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/chole.jpg'),
          //     title: Text('Chole'),
          //     subtitle: Text('vegetable'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/kadhaipaneer.jpg'),
          //     title: Text('Kadhai Paneer'),
          //     subtitle: Text('Paneer'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/kadipakodi.jpg'),
          //     title: Text('Kadi Pakodi'),
          //     subtitle: Text('Kadi'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/kheerarayta.jpg'),
          //     title: Text('Kheera Rayta'),
          //     subtitle: Text('Rayta'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/planechawal.jpg'),
          //     title: Text('Plane Chawal'),
          //     subtitle: Text('Chawal'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/rajma.jpg'),
          //     title: Text('Rajma'),
          //     subtitle: Text('Sabji'),
          //   ),
          // ),