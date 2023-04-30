class AboutMe {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  AboutMe(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });

  static List<AboutMe> aboutMeList = [
    AboutMe(1,
        name: 'Favourite Food',
        iconImage: 'assets/images/bingsu.png',
        description: "enakkk",
        images: [
          'https://i.pinimg.com/originals/7a/5e/f9/7a5ef97d3bca5878fdb52d30a67ccdce.jpg',
          'https://i.pinimg.com/originals/ba/51/97/ba5197b82bdcd6f689ef5507c856c38f.jpg',
          'https://i.pinimg.com/originals/d9/57/bb/d957bb2c13381c436c0cc41a380b98c8.jpg'
        ]),
    AboutMe(2,
        name: 'Holiday',
        iconImage: 'assets/images/snowman.png',
        description: 'Itu fotonya palsu',
        images: [
          'https://i.pinimg.com/originals/8d/c5/78/8dc578b3bd3372071cd94e36e87d2466.jpg',
          'https://i.pinimg.com/474x/c8/39/e7/c839e77bbd02f763a96e1606bc3b77db.jpg',
        ]),
    AboutMe(3,
        name: 'School',
        iconImage: 'assets/images/school.png',
        description: 'mau cepet lulus',
        images: [
          'https://awsimages.detik.net.id/community/media/visual/2019/02/12/43b5e043-b813-47c9-b0c1-3c8fa14bf6ae_169.jpeg?w=700&q=90',
          'https://awsimages.detik.net.id/community/media/visual/2022/06/13/smak-1-bpk-penabur.jpeg?w=1200'
        ])
  ];
}
