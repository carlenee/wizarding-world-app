class HarryPotterMovie {
  final String image;
  final String title;
  final String synopsis;
  final String releaseYear;
  final int rating;
  final int id;

  HarryPotterMovie(this.image, this.title, this.synopsis, this.releaseYear,
      this.rating, this.id);
  
  static List<HarryPotterMovie> hpMovie = [
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-1.png&w=1320&q=75',
        "Harry Potter and the Philosopher's Stone",
        "In this enchanting, three-time Oscar nominated film adaptation of J.K. Rowling's delightful bestseller (and the first entry in the most successful movie series in box-office history), Harry Potter learns on his 11th birthday that he is the orphaned first son of two powerful wizards and possesses magical powers of his own. At Hogwarts School of Witchcraft and Wizardry, Harry embarks on the adventure of a lifetime. He learns the high-flying sport Quidditch and plays a thrilling game with living chess pieces on his way to face a Dark Wizard bent on destroying him. For the most extraordinary adventure, see you on platform nine and three-quarters!",
        '2001',
        8,
        1),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-2.png&w=1320&q=75',
        'Harry Potter and the Chamber of Secrets',
        "The second instalment in the Harry Potter series finds young wizard Harry Potter (Daniel Radcliffe) and his friends Ron Weasley (Rupert Grint) and Hermione Granger (Emma Watson) facing new challenges during their second year at Hogwarts School of Witchcraft and Wizardry as they try to uncover a dark force that is terrorising the school.",
        '2002',
        7,
        2),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-3.png&w=1320&q=75',
        "Harry Potter and the Prisoner of Azkaban",
        "In Harry Potter and the Prisoner of Azkaban, Harry, Ron and Hermione, now teenagers, return for their third year at Hogwarts, where they are forced to face escaped prisoner, Sirius Black, who poses a great threat to Harry. Harry and his friends spend their third year learning how to handle a half-horse half-eagle Hippogriff, repel shape-shifting Boggarts and master the art of Divination. They also visit the wizarding village of Hogsmeade and the Shrieking Shack, which is considered the most haunted building in Britain. In addition to these new experiences, Harry must overcome the threats of the soul-sucking Dementors, outsmart a dangerous werewolf and finally deal with the truth about Sirius Black and his relationship to Harry and his parents. With his best friends, Harry masters advanced magic, crosses the barriers of time and changes the course of more than one life. Directed by Alfonso Cuaron and based on J.K. Rowling's third book, this wondrous spellbinder soars with laughs, and the kind of breathless surprise only found in a Harry Potter adventure.",
        '2004',
        8,
        3),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-4.png&w=1320&q=75',
        "Harry Potter and the Goblet of Fire",
        "When Harry Potter's name emerges from the Goblet of Fire, he becomes a competitor in a grueling battle for glory among three wizarding schools—the Triwizard Tournament. But since Harry never submitted his name for the Tournament, who did? Now Harry must confront a deadly dragon, fierce water demons and an enchanted maze only to find himself in the cruel grasp of ",
        '2005',
        7,
        4),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-5.png&w=1320&q=75',
        "Harry Potter and the Order of the Phoenix",
        "The rebellion begins! Lord Voldemort has returned, but the Ministry of Magic is doing everything it can to keep the wizarding world from knowing the truth – including appointing Ministry official Dolores Umbridge as the new Defence Against the Dark Arts professor at Hogwarts. When Umbridge refuses to teach practical defensive magic, Ron and Hermione convince Harry to secretly train a select group of students for the wizarding war that lies ahead. A terrifying showdown between good and evil awaits in this enthralling film.",
        '2007',
        7,
        5),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-6.png&w=1320&q=75',
        "Harry Potter and the Half-Blood Prince",
        "Voldemort is tightening his grip on both the Muggle and wizarding worlds and Hogwarts is no longer the safe haven it once was. Harry suspects that dangers may even lie within the castle, but Dumbledore is more intent upon preparing him for the final battle that he knows is fast approaching. Together they work to find the key to unlock Voldemort's defenses and, to this end, Dumbledore recruits his old friend and colleague, the well-connected and unsuspecting bon vivant Professor Horace Slughorn, whom he believes holds crucial information. Meanwhile, the students are under attack from a very different adversary as teenage hormones rage across the ramparts. Harry finds himself more and more drawn to Ginny, but so is Dean Thomas. And Lavender Brown has decided that Ron is the one for her, only she hadn't counted on Romilda Vane's chocolates! And then there's Hermione, simmering with jealously but determined not to show her feelings. As romance blossoms, one student remains aloof. He is determined to make his mark, albeit a dark one. Love is in the air, but tragedy lies ahead and Hogwarts may never be the same again.",
        '2009',
        7,
        6),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-7.png&w=1320&q=75',
        "Harry Potter and the Deathly Hallows Part 1",
        "Harry, Ron and Hermione set out on their perilous mission to track down and destroy the secret to Voldemort’s immortality and destruction—the Horcruxes. On their own, without the guidance of their professors or the protection of Professor Dumbledore, the three friends must now rely on one another more than ever. But there are Dark Forces in their midst that threaten to tear them apart. Meanwhile, the wizarding world has become a dangerous place for all enemies of the Dark Lord. The long-feared war has begun and Voldemort’s Death Eaters seize control of the Ministry of Magic and even Hogwarts, terrorizing and arresting anyone who might oppose them. But the one prize they still seek is the one most valuable to Voldemort: Harry Potter.  The Chosen One has become the hunted one as the Death Eaters search for Harry with orders to bring him to Voldemort… alive. Harry’s only hope is to find the Horcruxes before Voldemort finds him, but as he searches for clues, he uncovers an old and almost forgotten tale—the legend of the Deathly Hallows.",
        '2010',
        8,
        7),
    HarryPotterMovie(
        'https://www.wizardingworld.com/_next/image?url=%2Fimages%2Fproducts%2Ffilms%2Frectangle-8.png&w=1320&q=75',
        'Harry Potter and the Deathly Hallows Part 2',
        'In Part 2 of the epic finale, the battle between the good and evil forces of the Wizarding World escalate into an all-out war. The stakes have never been higher and no one is safe. But it is Harry Potter who may be called upon to make the ultimate sacrifice as he draws closer to the climactic showdown with Lord Voldemort. It all ends here.',
        '2011',
        8,
        8)
  ];
}
