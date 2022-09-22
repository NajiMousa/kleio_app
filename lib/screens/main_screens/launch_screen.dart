import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:kleio_app/database/get/book_model_getx_controller.dart';
import 'package:kleio_app/database/get/categories_model_getx_controller.dart';
import 'package:kleio_app/database/get/slider_model_getx_controller.dart';
import 'package:kleio_app/database/models/book_model.dart';
import 'package:kleio_app/database/models/categories_model.dart';
import 'package:kleio_app/database/models/slider_model.dart';
import 'package:kleio_app/pref/shread_pref.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  bool status = true;

  BookModelGetxController controller = Get.put(BookModelGetxController());
  CategoriesGetxController controllerCat = Get.put(CategoriesGetxController());
  SliderModelGetxController controllerSlider = Get.put(SliderModelGetxController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if(!SharedPrefController().isCreate){
    //   create();
    //   SharedPrefController().setCreatDataBase(log: true);
    // }
    create();
    addDataTopic();
    addDataGBook();
    Future.delayed(const Duration(seconds: 3), () {
      String route = !SharedPrefController().loggedIn ? '/home_screen' : '/login_screen';     //اذا مسجل دخول ع الهوم ع طول اذا لا ع اللوق ان
      Navigator.pushReplacementNamed(context, route);
    });

    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, !SharedPrefController().isLogin ? '/on_boarding_screen' : '/home_screen');
    //   status = false;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.orange.shade700,
            Colors.orange.shade200,
          ],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
        )),
        child: const Text(
          'KLEIO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

Future<void> create() async {
//
//   await BookModelGetxController.to.createBookMode(book01 );
//   await BookModelGetxController.to.createBookMode(book02);
//   await BookModelGetxController.to.createBookMode(book03);
//   await BookModelGetxController.to.createBookMode(book04);
//
//
//   await CategoriesGetxController.to.createCategoriesModel(cat02);
//   await CategoriesGetxController.to.createCategoriesModel(cat03);
//   await CategoriesGetxController.to.createCategoriesModel(cat);
//
  await SliderModelGetxController.to.createSliderModel(slider01);
  await SliderModelGetxController.to.createSliderModel(slider02);
  await SliderModelGetxController.to.createSliderModel(slider03);
//
//


  // bool created = await BookModelGetxController.to.createBookMode(book);
  // String message = created ? 'Created suucessfully' : 'Create failed';
}
// BookModel get book01 {
//   BookModel b = BookModel();
//   b.imageUrl = 'images/Backgroundimage.png';
//   b.autherName = 'ddddddddd';
//   b.bookName = 'dddddddddd';
//   b.imprintName = 'ddddddddddd';
//   b.languageBook = 'ddddddddddd';
//   b.longTime = '2' ;
//   b.tages = 'aaa';
//   return b;
// }
// BookModel get book02 {
//   BookModel b = BookModel();
//   b.imageUrl = 'images/Background.png';
//   b.autherName = 'ddddddddd';
//   b.bookName = 'dddddddddd';
//   b.imprintName = 'ddddddddddd';
//   b.languageBook = 'ddddddddddd';
//   b.longTime = '2' ;
//   b.tages = 'ccc';
//   return b;
// }
// BookModel get book03 {
//   BookModel b = BookModel();
//   b.imageUrl = 'images/bookCaver.png';
//   b.autherName = 'ddddddddd';
//   b.bookName = 'dddddddddd';
//   b.imprintName = 'ddddddddddd';
//   b.languageBook = 'ddddddddddd';
//   b.longTime = '2' ;
//   b.tages = 'bbb';
//   return b;
// }
// BookModel get book04 {
//   BookModel b = BookModel();
//   b.imageUrl = 'images/bookCaver.png';
//   b.autherName = 'ddddddddd';
//   b.bookName = 'dddddddddd';
//   b.imprintName = 'ddddddddddd';
//   b.languageBook = 'ddddddddddd';
//   b.longTime = '2' ;
//   b.tages = 'aaa';
//   return b;
// }
//
//
// CategoriesModel get cat {
//   CategoriesModel c = CategoriesModel();
//   c.imageCategories = 'images/Image.png';
//   c.categorieName = 'aaa';
//   c.numberBook = '73 Book';
//   return c ;
// }
// CategoriesModel get cat02 {
//   CategoriesModel c = CategoriesModel();
//   c.imageCategories = 'images/imageBB.png';
//   c.categorieName = 'bbb';
//   c.numberBook = '75 Book';
//   return c ;
// }
// CategoriesModel get cat03 {
//   CategoriesModel c = CategoriesModel();
//   c.imageCategories = 'images/book.png';
//   c.categorieName = 'ccc';
//   c.numberBook = '777 Book';
//   return c ;
// }
SliderModel get slider01 {
  SliderModel s = SliderModel();
  s.sliderName = ' mmmm';
  s.imageUrl = 'images/SliderPart.png' ;
  return s ;
}
SliderModel get slider02 {
  SliderModel s = SliderModel();
  s.sliderName = ' mmmm';
  s.imageUrl = 'images/SliderPart.png' ;
  return s ;
}
SliderModel get slider03 {
  SliderModel s = SliderModel();
  s.sliderName = ' mmmm';
  s.imageUrl = 'images/SliderPart.png' ;
  return s ;
}


void addDataTopic() async {
  CategoriesModel c = CategoriesModel();
  c.categorieName = "Action";
  c.imageCategories = "imageTopic/01.jpg";
  c.numberBook= '50 book ';
  await CategoriesGetxController.to.createCategoriesModel(c);
  ////
  CategoriesModel c2 = CategoriesModel();
  c2.categorieName = "Drama";
  c2.imageCategories = "imageTopic/06.jpeg";
  c2.numberBook= '60 book ';
  await CategoriesGetxController.to.createCategoriesModel(c2);

  CategoriesModel c3 = CategoriesModel();
  c3.categorieName = "Classics";
  c3.imageCategories = "imageTopic/02.jpg";
  c3.numberBook= '70 book ';
  await CategoriesGetxController.to.createCategoriesModel(c3);
  ////Horror
  CategoriesModel c4 = CategoriesModel();
  c4.categorieName = "Humor";
  c4.imageCategories = "imageTopic/03.jpg";
  c4.numberBook= '80 book ';
  await CategoriesGetxController.to.createCategoriesModel(c4);

  CategoriesModel c5 = CategoriesModel();
  c5.categorieName = "Poetry";
  c5.imageCategories = "imageTopic/04.jpg";
  c5.numberBook= '90 book ';
  await CategoriesGetxController.to.createCategoriesModel(c5);


  CategoriesModel c7 = CategoriesModel();
  c7.categorieName = "World Literature";
  c7.imageCategories = "imageTopic/05.jpg";
  c7.numberBook= '10 book ';
  await CategoriesGetxController.to.createCategoriesModel(c7);

}
void addDataGBook() async {

  BookModel b = BookModel();
  b.imageUrl = 'imagGratBook/InSearchofLostTimeby.png';
  b.autherName = 'Marcel Proust';
  b.bookName = 'In Search of Lost Time';
  b.languageBook = 'English';
  b.longTime = '2' ;
  b.tages = 'World Literature';
  b.description="Beautifully illustrated with atmospheric paintings by renowned artists, James Joyce's epic Modernist novel is a monumental work of genius that has yet to be surpassed. Its 265,000 words trace the experiences of a handful of fascinating characters during a single day in 1904. Much of the novel is written in stream of consciousness style that was a radical break from what had come before and is both challenging and immensely rewarding for readers. Joyce brilliantly managed the seemingly impossible task of putting the human thought process onto paper. \n* This meticulous digital edition from Heritage Illustrated Publishing is a faithful reproduction of the original text and is enhanced with images of classic works of art carefully selected by our team of professional editors.";
  await BookModelGetxController.to.createBookMode(b);

  BookModel b2 = BookModel();
  b2.imageUrl = 'imagGratBook/Ulysses.png';
  b2.autherName = 'James Joyce';
  b2.bookName = 'Ulysses';
  b2.languageBook = 'English';
  b2.longTime = '3' ;
  b2.tages = 'Classics';
  b2.description="Beautifully illustrated with atmospheric paintings by renowned artists, James Joyce's epic Modernist novel is a monumental work of genius that has yet to be surpassed. Its 265,000 words trace the experiences of a handful of fascinating characters during a single day in 1904. Much of the novel is written in stream of consciousness style that was a radical break from what had come before and is both challenging and immensely rewarding for readers. Joyce brilliantly managed the seemingly impossible task of putting the human thought process onto paper. \n* This meticulous digital edition from Heritage Illustrated Publishing is a faithful reproduction of the original text and is enhanced with images of classic works of art carefully selected by our team of professional editors.";
  await BookModelGetxController.to.createBookMode(b2);
  ////
  BookModel b3 = BookModel();
  b3.imageUrl = 'imagGratBook/DonQuixote.png';
  b3.autherName = 'Miguel de Cervantes';
  b3.bookName = 'Don Quixote';
  b3.languageBook = 'English';
  b3.longTime = '4' ;
  b3.tages = 'Classics';
  b3.description="Beautifully illustrated with atmospheric paintings by renowned artists, James Joyce's epic Modernist novel is a monumental work of genius that has yet to be surpassed. Its 265,000 words trace the experiences of a handful of fascinating characters during a single day in 1904. Much of the novel is written in stream of consciousness style that was a radical break from what had come before and is both challenging and immensely rewarding for readers. Joyce brilliantly managed the seemingly impossible task of putting the human thought process onto paper. \n* This meticulous digital edition from Heritage Illustrated Publishing is a faithful reproduction of the original text and is enhanced with images of classic works of art carefully selected by our team of professional editors.";
  await BookModelGetxController.to.createBookMode(b3);
  ////
  BookModel b4 = BookModel();
  b4.imageUrl = 'imagGratBook/OneHundredYearsOfSolitude.png';
  b4.autherName = 'Gabriel Garcia Marquez';
  b4.bookName = 'One Hundred Years of Solitude';
  b4.languageBook = 'English';
  b4.longTime = '5' ;
  b4.tages = 'Genre Fiction';
  b4.description="One of the 20th century's enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world, and the ultimate achievement in a Nobel Prize–winning career. The novel tells the story of the rise and fall of the mythical town of Macondo through the history of the Buendía family. It is a rich and brilliant chronicle of life and death, and the tragicomedy of humankind. In the noble, ridiculous, beautiful, and tawdry story of the Buendía family, one sees all of humanity, just as in the history, myths, growth, and decay of Macondo, one sees all of Latin America. Love and lust, war and revolution, riches and poverty, youth and senility — the variety of life, the endlessness of death, the search for peace and truth — these universal themes dominate the novel. Whether he is describing an affair of passion or the voracity of capitalism and the corruption of government, Gabriel García Márquez always writes with the simplicity, ease, andpurity that are the mark of a master. Alternately reverential and comical, One Hundred Years of Solitude weaves the political, personal, and spiritual to bring a new consciousness to storytelling. Translated into dozens of languages, this stunning work is no less than an accounting of the history of the human race.";
  await BookModelGetxController.to.createBookMode(b4);
  ////
  BookModel b5 = BookModel();
  b5.imageUrl = 'imagGratBook/TheGreatGatsby.png';
  b5.autherName = 'F. Scott Fitzgerald';
  b5.bookName = 'The Great Gatsby';
  b5.languageBook = 'English';
  b5.longTime = '5' ;
  b5.tages = 'Genre Fiction';
  b5.description="The novel chronicles an era that Fitzgerald himself dubbed the \"Jazz Age\". Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the \"roaring\" 1920s as the economy soared. At the same time, Prohibition, the ban on the sale and manufacture of alcohol as mandated by the Eighteenth Amendment, made millionaires out of bootleggers and led to an increase in organized crime, for example the Jewish mafia. Although Fitzgerald, like Nick Carraway in his novel, idolized the riches and glamor of the age, he was uncomfortable with the unrestrained materialism and the lack of morality that went with it, a kind of decadence.";
  await BookModelGetxController.to.createBookMode(b5);
  ////
  BookModel b6 = BookModel();
  b6.imageUrl = 'imagGratBook/MobyDick.png';
  b6.autherName = 'Herman Melville';
  b6.bookName = 'Moby Dick';
  b6.languageBook = 'English';
  b6.longTime = '5' ;
  b6.tages = 'Action & Adventure';
  b6.description="First published in 1851, Melville's masterpiece is, in Elizabeth Hardwick's words, \"the greatest novel in American literature.\" The saga of Captain Ahab and his monomaniacal pursuit of the white whale remains a peerless adventure story but one full of mythic grandeur, poetic majesty, and symbolic power. Filtered through the consciousness of the novel's narrator, Ishmael, Moby-Dick draws us into a universe full of fascinating characters and stories, from the noble cannibal Queequeg to the natural history of whales, while reaching existential depths that excite debate and contemplation to this day.";
  await BookModelGetxController.to.createBookMode(b6);
  ////
  BookModel b7 = BookModel();
  b7.imageUrl = 'imagGratBook/WarandPeace.png';
  b7.autherName = 'Leo Tolstoy';
  b7.bookName = 'War and Peace';
  b7.languageBook = 'English';
  b7.longTime = '7' ;
  b7.tages = 'Genre Fiction';
  b7.description="Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleon's invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of five Russian aristocratic families.";
  await BookModelGetxController.to.createBookMode(b7);
  ////
  BookModel b8 = BookModel();
  b8.imageUrl = 'imagGratBook/Hamlet.png';
  b8.autherName = 'William Shakespeare';
  b8.bookName = 'Hamlet';
  b8.languageBook = 'English';
  b8.longTime = '7' ;
  b8.tages = 'Dramas';
  b8.description="The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how Prince Hamlet exacts revenge on his uncle Claudius, who has murdered Hamlet's father, the King, and then taken the throne and married Gertrude, Hamlet's mother. The play vividly charts the course of real and feigned madness—from overwhelming grief to seething rage—and explores themes of treachery, revenge, incest, and moral corruption.";
  await BookModelGetxController.to.createBookMode(b8);
  ////
  BookModel b9 = BookModel();
  b9.imageUrl = 'imagGratBook/TheOdyssey.png';
  b9.autherName = 'Homer';
  b9.bookName = 'The Odyssey';
  b9.languageBook = 'English';
  b9.longTime = '7' ;
  b9.tages = 'Poetry';
  b9.description="The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer. The poem is fundamental to the modern Western canon. Indeed it is the second—the Iliad being the first—extant work of Western literature. It was probably composed near the end of the eighth century BC, somewhere in Ionia, the Greek-speaking coastal region of what is now Turkey. The poem mainly centers on the Greek hero Odysseus (or Ulysses, as he was known in Roman myths) and his long journey home following the fall of Troy. It takes Odysseus ten years to reach Ithaca after the ten-year Trojan War. In his absence, it is assumed he has died, and his wife Penelope and son Telemachus must deal with a group of unruly suitors, the Mnesteres or Proci, competing for Penelope's hand in marriage.";
  await BookModelGetxController.to.createBookMode(b9);
  ////
  BookModel b10 = BookModel();
  b10.imageUrl = 'imagGratBook/MadameBovary.png';
  b10.autherName = 'Gustave Flaubert';
  b10.bookName = 'The Count of Monte Cristo';
  b10.languageBook = 'English';
  b10.longTime = '7' ;
  b10.tages = 'World Literature';
  b10.description="For daring to peer into the heart of an adulteress and enumerate its contents with profound dispassion, the author of Madame Bovary was tried for \"offenses against morality and religion.\" What shocks us today about Flaubert's devastatingly realized tale of a young woman destroyed by the reckless pursuit of her romantic dreams is its pure artistry: the poise of its narrative structure, the opulence of its prose (marvelously captured in the English translation of Francis Steegmuller), and its creation of a world whose minor figures are as vital as its doomed heroine. In reading Madame Bovary, one experiences a work that remains genuinely revolutionary almost a century and a half after its creation.";
  await BookModelGetxController.to.createBookMode(b10);
  ////
  BookModel b11 = BookModel();
  b11.imageUrl = 'imagGratBook/InSearchofLostTimeby.png';
  b11.autherName = 'Alexandre Dumas père';
  b11.bookName = 'The Count of Monte Cristo';
  b11.languageBook = 'English';
  b11.longTime = '7' ;
  b11.tages = 'Classics';
  b11.description="Thrown in prison for a crime he has not committed, Edmond Dantes is confined to the grim fortress of If. There he learns of a great hoard of treasure hidden on the Isle of Monte Cristo and he becomes determined not only to escape, but also to unearth the treasure and use it to plot the destruction of the three men responsible for his incarceration. Dumas’ epic tale of suffering and retribution, inspired by a real-life case of wrongful imprisonment, was a huge popular success when it was first serialized in the 1840s.Robin Buss’s lively English translation is complete and unabridged, and remains faithful to the style of Dumas’s original. This edition includes an introduction, explanatory notes and suggestions for further reading.\n For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators.";
  await BookModelGetxController.to.createBookMode(b11);
  ////
  BookModel b12 = BookModel();
  b12.imageUrl = 'imagGratBook/Ulysses.png';
  b12.autherName = 'George R. R. Martin';
  b12.bookName = 'A Game of Thrones';
  b12.languageBook = 'English';
  b12.longTime = '7' ;
  b12.tages = 'Classics';
  b12.description="Perfect for fans of HBO’s Game of Thrones—a boxed set featuring the first five novels!\n\nAn immersive entertainment experience unlike any other, A Song of Ice and Fire has earned George R. R. Martin—dubbed “the American Tolkien” by Time magazine—international acclaim and millions of loyal readers. Now here is the entire monumental cycle:\n\nA GAME OF THRONES\nA CLASH OF KINGS\nA STORM OF SWORDS\nA FEAST FOR CROWS\nA DANCE WITH DRAGONS\n\n“One of the best series in the history of fantasy.”—Los Angeles Times";
  await BookModelGetxController.to.createBookMode(b12);
  ////
  BookModel b13 = BookModel();
  b13.imageUrl = 'imagGratBook/DonQuixote.png';
  b13.autherName = 'Ralph Ellison';
  b13.bookName = 'Invisible Man';
  b13.languageBook = 'English';
  b13.longTime = '7' ;
  b13.tages = 'Classics';
  b13.description="Originally published in 1952 as the first novel by a then unknown author, it remained on the bestseller list for sixteen weeks, won the National Book Award for fiction, and established Ralph Ellison as one of the key writers of the century.\n\nThe book's nameless narrator describes growing up in a black community in the South, attending a Negro college from which he is expelled, moving to New York and becoming the chief spokesman of the Harlem branch of \"the Brotherhood\", before retreating amid violence and confusion to the basement lair of the Invisible Man he imagines himself to be.\n\nThe book is a passionate and witty tour de force of style, strongly influenced by T.S. Eliot's The Waste Land, James Joyce, and Dostoevsky.";
  await BookModelGetxController.to.createBookMode(b13);
  ////
  BookModel b14 = BookModel();
  b14.imageUrl = 'imagGratBook/OneHundredYearsOfSolitude.png';
  b14.autherName = 'Jack London';
  b14.bookName = 'The Call of the Wild';
  b14.languageBook = 'English';
  b14.longTime = '7' ;
  b14.tages = 'Classics';
  b14.description="There is an ecstasy that marks the summit of life, and beyond which life cannot rise. And such is the paradox of living, this ecstasy comes when one is most alive, and it comes as a complete forgetfulness that one is alive.\n\nThe domesticated life of a powerful St. Bernard-Shepherd mix named Buck is quickly turned on end when he is stolen away from his master and put to work as a sled dog in Alaska. His once life of luxury turns into a life of survival and adaptation as he learns the ways of the wilderness.\n\nSet in the Klondike region of Canada during the 1890s Klondike Gold Rush, The Call of the Wild showcases the transformation of a canine as he learns to adapt to what life has given him, fair or not.";
  await BookModelGetxController.to.createBookMode(b14);
  ////
  BookModel b15 = BookModel();
  b15.imageUrl = 'imagGratBook/TheGreatGatsby.png';
  b15.autherName = 'William Goldman';
  b15.bookName = 'The Princess Bride';
  b15.languageBook = 'English';
  b15.longTime = '7' ;
  b15.tages = 'Classics';
  b15.description="Here William Goldman’s beloved story of Buttercup, Westley, and their fellow adventurers finally receives a beautiful illustrated treatment.\n\nA tale of true love and high adventure, pirates, princesses, giants, miracles, fencing, and a frightening assortment of wild beasts—The Princess Bride is a modern storytelling classic.\n\nAs Florin and Guilder teeter on the verge of war, the reluctant Princess Buttercup is devastated by the loss of her true love, kidnapped by a mercenary and his henchman, rescued by a pirate, forced to marry Prince Humperdinck, and rescued once again by the very crew who absconded with her in the first place. In the course of this dazzling adventure, she'll meet Vizzini—the criminal philosopher who'll do anything for a bag of gold; Fezzik—the gentle giant; Inigo—the Spaniard whose steel thirsts for revenge; and Count Rugen—the evil mastermind behind it all. Foiling all their plans and jumping into their stories is Westley, Princess Buttercup’s one true love and a very good friend of a very dangerous pirate.";
  await BookModelGetxController.to.createBookMode(b15);
  ////
  BookModel b16 = BookModel();
  b16.imageUrl = 'imagGratBook/MobyDick.png';
  b16.autherName = 'Herman Melville';
  b16.bookName = 'Moby Dick';
  b16.languageBook = 'English';
  b16.longTime = '7' ;
  b16.tages = 'Classics';
  b16.description="Moby Dick is the story of Captain Ahab's quest to avenge the whale that 'reaped' his leg. The quest is an obsession and the novel is a diabolical study of how a man becomes a fanatic. But it is also a hymn to democracy. Bent as the crew is on Ahab s appalling crusade, it is equally the image of a co-operative community at work: all hands dependent on all hands, each individual responsible for the security of each. Among the crew is Ishmael, the novel's narrator, ordinary sailor, and extraordinary reader. Digressive, allusive, vulgar, transcendent, the story Ishmael tells is above all an education: in the practice of whaling, in the art of writing.\nWith an Introduction and Notes by David Herd. Lecturer in English and American Literature at the University of Kent at Canterbury";
  await BookModelGetxController.to.createBookMode(b16);
  ////
  BookModel b17 = BookModel();
  b17.imageUrl = 'imagGratBook/WarandPeace.png';
  b17.autherName = 'Lee Child';
  b17.bookName = 'Better Off Dead: A Jack Reacher Nove';
  b17.languageBook = 'English';
  b17.longTime = '7' ;
  b17.tages = 'Action & Adventure';
  b17.description="Digging graves had not been part of my plans when I woke up that morning.\n\nReacher goes where he wants, when he wants. That morning he was heading west, walking under the merciless desert sun—until he comes upon a curious scene. A Jeep has crashed into the only tree for miles around. A woman is slumped over the wheel.\n\nDead? No, nothing is what it seems.\n\nThe woman is Michaela Fenton, an army veteran turned FBI agent trying to find her twin brother, who might be mixed up with some dangerous people. Most of them would rather die than betray their terrifying leader, who has burrowed his influence deep into the nearby border town, a backwater that has seen better days. The mysterious Dendoncker rules from the shadows, out of sight and under the radar, keeping his dealings in the dark.\n\nHe would know the fate of Fenton’s brother.\n\nReacher is good at finding people who don’t want to be found, so he offers to help, despite feeling that Fenton is keeping secrets of her own. But a life hangs in the balance. Maybe more than one. But to bring Dendoncker down will be the riskiest job of Reacher's life. Failure is not an option, because in this kind of game, the loser is always better off dead.";
  await BookModelGetxController.to.createBookMode(b17);
  ////
  BookModel b18 = BookModel();
  b18.imageUrl = 'imagGratBook/Hamlet.png';
  b18.autherName = 'Ray Bradbury';
  b18.bookName = 'Fahrenheit 451';
  b18.languageBook = 'English';
  b18.longTime = '7' ;
  b18.tages = 'Action & Adventure';
  b18.description="Nearly seventy years after its original publication, Ray Bradbury’s internationally acclaimed novel Fahrenheit 451 stands as a classic of world literature set in a bleak, dystopian future. Today its message has grown more relevant than ever before.\n\nGuy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known.";
  await BookModelGetxController.to.createBookMode(b18);
  ////
  BookModel b19 = BookModel();
  b19.imageUrl = 'imagGratBook/TheOdyssey.png';
  b19.autherName = 'David Baldacci';
  b19.bookName = 'Mercy';
  b19.languageBook = 'English';
  b19.longTime = '7' ;
  b19.tages = 'Action & Adventure';
  b19.description="FBI Agent Atlee Pine’s harrowing search for her long-lost sister Mercy reaches a boiling point in this breakneck thriller from #1 New York Times bestselling author David Baldacci.\n\nFor her entire life, FBI agent Atlee Pine has been searching for her twin sister, Mercy, who was abducted at the age of six and never seen again. Mercy’s disappearance left behind a damaged family that later shattered beyond repair when Atlee’s parents inexplicably abandoned her.\n\nNow, after a perilous investigation that nearly proved fatal, Atlee has finally discovered not only the reason behind her parents’ abandonment and Mercy’s kidnapping, but also the most promising breakthrough yet: proof that Mercy survived her abduction and then escaped her captors many years ago.\n\nThough Atlee is tantalizingly close to her family at last, the final leg of her long road to Mercy will be the most treacherous yet. Mercy left at least one dead body behind before fleeing her captors years before. Atlee has no idea if her sister is still alive, and if so, how she has been surviving all this time. When the truth is finally revealed, Atlee Pine will face the greatest danger yet, and it may well cost her everything.";
  await BookModelGetxController.to.createBookMode(b19);
  ////
  BookModel b20 = BookModel();
  b20.imageUrl = 'imagGratBook/MadameBovary.png';
  b20.autherName = 'Amir Tsarfati';
  b20.bookName = 'Operation Joktan';
  b20.languageBook = 'English';
  b20.longTime = '7' ;
  b20.tages = 'Action & Adventure';
  b20.description="Nir Tavor is an Israeli secret service operative turned talented Mossad agent.\n\nNicole le Roux is a model with a hidden skill.\n\nA terrorist attack brings them together, and then work forces them apart—until they’re unexpectedly called back into each other’s lives.\n\nBut there’s no time for romance. As violent radicals threaten chaos across the Middle East, the two must work together to stop these extremists, pooling Nicole’s knack for technology and Nir’s adeptness with on-the-ground missions. Each heart-racing step of their operation gets them closer to the truth—and closer to danger.\n\nIn this thrilling first book in a new series, authors Amir Tsarfati and Steve Yohn draw on true events as well as tactical insights Amir learned from his time in the Israeli Defense Forces. For believers in God’s life-changing promises, Operation Joktan is a suspense-filled page-turner that illuminates the blessing Israel is to the world.";
  await BookModelGetxController.to.createBookMode(b20);
  ////
  BookModel b21 = BookModel();
  b21.imageUrl = 'imagGratBook/InSearchofLostTimeby.png';
  b21.autherName = 'Ken Follett';
  b21.bookName = 'Never: A Novel';
  b21.languageBook = 'English';
  b21.longTime = '7' ;
  b21.tages = 'Action & Adventure';
  b21.description="“A compelling story, and only too realistic.” —Lawrence H. Summers, former U.S. Treasury Secretary\n\n\“Every catastrophe begins with a little problem that doesn’t get fixed.\” So says Pauline Green, president of the United States, in Follett’s nerve-racking drama of international tension.\n\nA shrinking oasis in the Sahara Desert; a stolen US Army drone; an uninhabited Japanese island; and one country’s secret stash of deadly chemical poisons: all these play roles in a relentlessly escalating crisis.\n\nStruggling to prevent the outbreak of world war are a young woman intelligence officer; a spy working undercover with jihadists; a brilliant Chinese spymaster; and Pauline herself, beleaguered by a populist rival for the next president election.\n\nNever is an extraordinary novel, full of heroines and villains, false prophets and elite warriors, jaded politicians and opportunistic revolutionaries. It brims with cautionary wisdom for our times, and delivers a visceral, heart-pounding read that transports readers to the brink of the unimaginable.";
  await BookModelGetxController.to.createBookMode(b21);
  ////
  BookModel b22  = BookModel();
  b22.imageUrl = 'imagGratBook/Ulysses.png';
  b22.autherName = 'Paulo Coelho';
  b22.bookName = 'The Alchemist';
  b22.languageBook = 'English';
  b22.longTime = '7' ;
  b22.tages = 'Action & Adventure';
  b22.description="A special 25th anniversary edition of the extraordinary international bestseller, including a new Foreword by Paulo Coelho.\n\nCombining magic, mysticism, wisdom and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers across generations.\n\nPaulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago's journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, to follow our dreams.";
  await BookModelGetxController.to.createBookMode(b22);
  ////
  BookModel b23 = BookModel();
  b23.imageUrl = 'imagGratBook/DonQuixote.png';
  b23.autherName = 'Lorraine Hansberry';
  b23.bookName = 'A Raisin in the Sun';
  b23.languageBook = 'English';
  b23.longTime = '7' ;
  b23.tages = 'Drama';
  b23.description="This groundbreaking play starred Sidney Poitier, Claudia McNeill, Ruby Dee and Diana Sands in the Broadway production which opened in 1959. Set on Chicago's South Side, the plot revolves around the divergent dreams and conflicts within three generations of the Younger family: son Walter Lee, his wife Ruth, his sister Beneatha, his son Travis and matriarch Lena, called Mama. When her deceased husband's insurance money comes through, Mama dreams of moving to a new home and a better neighborhood in Chicago. Walter Lee, a chauffeur, has other plans, however: buying a liquor store and being his own man. Beneatha dreams of medical school.\n\nThe tensions and prejudice they face form this seminal American drama. Sacrifice, trust and love among the Younger family and their heroic struggle to retain dignity in a harsh and changing world is a searing and timeless document of hope and inspiration. Winner of the NY Drama Critic's Award as Best Play of the Year, it has been hailed as a \"pivotal play in the history of the American Black theatre.\" by Newsweek and \"a milestone in the American Theatre.\" by Ebony.";
  await BookModelGetxController.to.createBookMode(b23);
  ////
  BookModel b24 = BookModel();
  b24.imageUrl = 'imagGratBook/OneHundredYearsOfSolitude.png';
  b24.autherName = 'Bob Spitz';
  b24.bookName = 'Led Zeppelin';
  b24.languageBook = 'English';
  b24.longTime = '7' ;
  b24.tages = 'Drama';
  b24.description="Rock star. Whatever that term means to you, chances are it owes a debt to Led Zeppelin. No one before or since has lived the dream quite like Jimmy Page, Robert Plant, John Paul Jones, and John Bonham. In Led Zeppelin, Bob Spitz takes their full measure, separating the myth from the reality with his trademark connoisseurship and storytelling flair.\n\nFrom the opening notes of their first album, the band announced itself as something different, a collision of grand artistic ambition and brute primal force, of English folk music and African American blues. That record sold over 10 million copies, and it was just the beginning; Led Zeppelin's albums have sold over 300 million certified copies worldwide, and the dust has never settled.\n\nThe band is notoriously guarded, and previous books provided more heat than light. But Spitz's authority is undeniable and irresistible. His feel for the atmosphere, the context--the music, the business, the recording studios, the touring life, the whole ecosystem of popular music--is unparalleled. His account of the melding of Page and Jones, the virtuosic London sophisticates, with Plant and Bonham, the wild men from the Midlands, in a scene dominated by the Beatles and the Stones but changing fast, is in itself a revelation. Spitz takes the music seriously and brings the band's artistic journey to full and vivid life.\n\nThe music, however, is only part of the legend: Led Zeppelin is also the story of how the sixties became the seventies, of how playing clubs became playing stadiums, of how innocence became decadence. Led Zeppelin wasn't the first rock band to let loose on the road, but as with everything else, they took it to an entirely new level. Not all the legends are true, but in Spitz's careful accounting, what is true is astonishing and sometimes disturbing.\n\nLed Zeppelin gave no quarter, and neither has Bob Spitz. Led Zeppelin is the full and honest reckoning the band has long awaited, and richly deserves.";
  await BookModelGetxController.to.createBookMode(b24);
  ////
  BookModel b25 = BookModel();
  b25.imageUrl = 'imagGratBook/TheGreatGatsby.png';
  b25.autherName = 'Lin-Manuel Miranda';
  b25.bookName = 'Hamilton';
  b25.languageBook = 'English';
  b25.longTime = '7' ;
  b25.tages = 'Drama';
  b25.description="Lin-Manuel Miranda's groundbreaking musical Hamilton is as revolutionary as its subject, the poor kid from the Caribbean who fought the British, defended the Constitution, and helped to found the United States. Fusing hip-hop, pop, R&B, and the best traditions of theater, this once-in-a-generation show broadens the sound of Broadway, reveals the storytelling power of rap, and claims our country's origins for a diverse new generation.\n\nHamilton: The Revolution gives readers an unprecedented view of both revolutions, from the only two writers able to provide it. Miranda, along with Jeremy McCarter, a cultural critic and theater artist who was involved in the project from its earliest stages -- \"since before this was even a show,\" according to Miranda -- traces its development from an improbable performance at the White House to its landmark opening night on Broadway six years later. In addition, Miranda has written more than 200 funny, revealing footnotes for his award-winning libretto, the full text of which is published here.\n\nTheir account features photos by the renowned Frank Ockenfels and veteran Broadway photographer, Joan Marcus; exclusive looks at notebooks and emails; interviews with Questlove, Stephen Sondheim, leading political commentators, and more than 50 people involved with the production; and multiple appearances by President Obama himself. The book does more than tell the surprising story of how a Broadway musical became a national phenomenon: It demonstrates that America has always been renewed by the brash upstarts and brilliant outsiders, the men and women who don't throw away their shot.";
  await BookModelGetxController.to.createBookMode(b25);
  ////
  BookModel b26 = BookModel();
  b26.imageUrl = 'imagGratBook/MobyDick.png';
  b26.autherName = 'Amir Tsarfati';
  b26.bookName = 'The Crucible';
  b26.languageBook = 'English';
  b26.longTime = '7' ;
  b26.tages = 'Drama';
  b26.description="Based on historical people and real events, Arthur Miller's play uses the destructive power of socially sanctioned violence unleashed by the rumors of witchcraft as a powerful parable about McCarthyism.";
  await BookModelGetxController.to.createBookMode(b26);
  ////
  BookModel b27 = BookModel();
  b27.imageUrl = 'imagGratBook/WarandPeace.png';
  b27.autherName = 'William Shakespeare';
  b27.bookName = 'Romeo and Juliet';
  b27.languageBook = 'English';
  b27.longTime = '7' ;
  b27.tages = 'Drama';
  b27.description="Romeo and Juliet is a tragedy written by William Shakespeare early in his career about two young Italian star-crossed lovers whose deaths ultimately reconcile their feuding families. It was among Shakespeare's most popular plays during his lifetime and, along with Hamlet, is one of his most frequently performed plays. Today, the title characters are regarded as archetypal young lovers.";
  await BookModelGetxController.to.createBookMode(b27);
  ////
  BookModel b28 = BookModel();
  b28.imageUrl = 'imagGratBook/Hamlet.png';
  b28.autherName = 'Janet Evanovich';
  b28.bookName = 'Game On';
  b28.languageBook = 'English';
  b28.longTime = '7' ;
  b28.tages = 'Humor';
  b28.description="When Stephanie Plum is woken up in the middle of the night by the sound of footsteps in her apartment, she wishes she didn’t keep her gun in the cookie jar in her kitchen. And when she finds out the intruder is fellow apprehension agent Diesel, six feet of hard muscle and bad attitude who she hasn’t seen in more than two years, she still thinks the gun might come in handy.\n\nTurns out Diesel and Stephanie are on the trail of the same fugitive: Oswald Wednesday, an international computer hacker as brilliant as he is ruthless. Stephanie may not be the most technologically savvy sleuth, but she more than makes up for that with her dogged determination, her understanding of human nature, and her willingness to do just about anything to bring a fugitive to justice. Unsure if Diesel is her partner or her competition in this case, she’ll need to watch her back every step of the way as she sets the stage to draw Wednesday out from behind his computer and into the real world.";
  await BookModelGetxController.to.createBookMode(b28);
  ////
  BookModel b29 = BookModel();
  b29.imageUrl = 'imagGratBook/TheOdyssey.png';
  b29.autherName = 'George Orwell';
  b29.bookName = 'Animal Farm';
  b29.languageBook = 'English';
  b29.longTime = '7' ;
  b29.tages = 'Humor';
  b29.description="A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned—a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.\n\nWhen Animal Farm was first published, Stalinist Russia was seen as its target. Today it is devastatingly clear that wherever and whenever freedom is attacked, under whatever banner, the cutting clarity and savage comedy of George Orwell’s masterpiece have a meaning and message sti";
  await BookModelGetxController.to.createBookMode(b29);
  ////
  BookModel b30 = BookModel();
  b30.imageUrl = 'imagGratBook/MadameBovary.png';
  b30.autherName = 'Christina Lauren';
  b30.bookName = 'The Unhoneymooners';
  b30.languageBook = 'English';
  b30.longTime = '7' ;
  b30.tages = 'Humor';
  b30.description="Olive Torres is used to being the unlucky twin: from inexplicable mishaps to a recent layoff, her life seems to be almost comically jinxed. By contrast, her sister Ami is an eternal champion...she even managed to finance her entire wedding by winning a slew of contests. Unfortunately for Olive, the only thing worse than constant bad luck is having to spend the wedding day with the best man (and her nemesis), Ethan Thomas.\n\nOlive braces herself for wedding hell, determined to put on a brave face, but when the entire wedding party gets food poisoning, the only people who aren’t affected are Olive and Ethan. Suddenly there’s a free honeymoon up for grabs, and Olive will be damned if Ethan gets to enjoy paradise solo.\n\nAgreeing to a temporary truce, the pair head for Maui. After all, ten days of bliss is worth having to assume the role of loving newlyweds, right? But the weird thing is...Olive doesn’t mind playing pretend. In fact, the more she pretends to be the luckiest woman alive, the more it feels like she might be.\n\nWith Christina Lauren’s “uniquely hilarious and touching voice” (Entertainment Weekly), The Unhoneymooners is a romance for anyone who has ever felt unlucky in love.";
  await BookModelGetxController.to.createBookMode(b30);
  ////
  BookModel b31 = BookModel();
  b31.imageUrl = 'imagGratBook/InSearchofLostTimeby.png';
  b31.autherName = 'Chinua Achebe';
  b31.bookName = 'Things Fall Apart';
  b31.languageBook = 'English';
  b31.longTime = '7' ;
  b31.tages = 'World Literature';
  b31.description="Things Fall Apart is the first of three novels in Chinua Achebe's critically acclaimed African Trilogy. It is a classic narrative about Africa's cataclysmic encounter with Europe as it establishes a colonial presence on the continent. Told through the fictional experiences of Okonkwo, a wealthy and fearless Igbo warrior of Umuofia in the late 1800s, Things Fall Apart explores one man's futile resistance to the devaluing of his Igbo traditions by British political andreligious forces and his despair as his community capitulates to the powerful new order.\n\nWith more than 20 million copies sold and translated into fifty-seven languages, Things Fall Apart provides one of the most illuminating and permanent monuments to African experience. Achebe does not only capture life in a pre-colonial African village, he conveys the tragedy of the loss of that world while broadening our understanding of our contemporary realities.";
  await BookModelGetxController.to.createBookMode(b31);
  ////
  BookModel b32 = BookModel();
  b32.imageUrl = 'imagGratBook/Ulysses.png';
  b32.autherName = 'Courtney Peppernell';
  b32.bookName = 'Pillow Thoughts';
  b32.languageBook = 'English';
  b32.longTime = '7' ;
  b32.tages = 'World Literature';
  b32.description="Pillow Thoughts is a collection of poetry and prose about heartbreak, love, and raw emotions. It is divided into sections to read when you feel you need them most.";
  await BookModelGetxController.to.createBookMode(b32);
  ////
  BookModel b33 = BookModel();
  b33.imageUrl = 'imagGratBook/DonQuixote.png';
  b33.autherName = 'Albert Camus';
  b33.bookName = 'The Stranger';
  b33.languageBook = 'English';
  b33.longTime = '7' ;
  b33.tages = 'World Literature';
  b33.description="Behind the intrigue, Camus explores what he termed \"the nakedness of man faced with the absurd\" and describes the condition of reckless alienation and spiritual exhaustion that characterized so much of twentieth-century life.\n\nFirst published in 1946; now in translation by Matthew Ward.";
  await BookModelGetxController.to.createBookMode(b33);
  ////
  BookModel b34 = BookModel();
  b34.imageUrl = 'imagGratBook/OneHundredYearsOfSolitude.png';
  b34.autherName = 'Kevin Miller';
  b34.bookName = 'Up the Creek!';
  b34.languageBook = 'English';
  b34.longTime = '7' ;
  b34.tages = 'World Literature';
  b34.description="“A compelling story, and only too realistic.” —Lawrence H. Summers, former U.S. Treasury Secretary\n\n\“Every catastrophe begins with a little problem that doesn’t get fixed.\” So says Pauline Green, president of the United States, in Follett’s nerve-racking drama of international tension.\n\nA shrinking oasis in the Sahara Desert; a stolen US Army drone; an uninhabited Japanese island; and one country’s secret stash of deadly chemical poisons: all these play roles in a relentlessly escalating crisis.\n\nStruggling to prevent the outbreak of world war are a young woman intelligence officer; a spy working undercover with jihadists; a brilliant Chinese spymaster; and Pauline herself, beleaguered by a populist rival for the next president election.\n\nNever is an extraordinary novel, full of heroines and villains, false prophets and elite warriors, jaded politicians and opportunistic revolutionaries. It brims with cautionary wisdom for our times, and delivers a visceral, heart-pounding read that transports readers to the brink of the unimaginable.";
  await BookModelGetxController.to.createBookMode(b34);
  ////
  BookModel b35 = BookModel();
  b35.imageUrl = 'imagGratBook/TheGreatGatsby.png';
  b35.autherName = 'Dr. Seuss';
  b35.bookName = 'How the Grinch Stole Christmas!';
  b35.languageBook = 'English';
  b35.longTime = '7' ;
  b35.tages = 'Poetry';
  b35.description="Every Who down in Who-ville liked Christmas a lot . . . but the Grinch, who lived just north of Who-ville, did NOT!\n\nNot since \"'Twas the night before Christmas\" has the beginning of a Christmas tale been so instantly recognizable. This heartwarming story about the effects of the Christmas spirit will grow even the coldest and smallest of hearts. Like mistletoe, candy canes, and caroling, the Grinch is a mainstay of the holidays, and his story is the perfect gift for readers young and old.";
  await BookModelGetxController.to.createBookMode(b35);

  ////
  BookModel b36 = BookModel();
  b36.imageUrl = 'imagGratBook/MobyDick.png';
  b36.autherName = 'Yung Pueblo';
  b36.bookName = 'Clarity & Connection';
  b36.languageBook = 'English';
  b36.longTime = '7' ;
  b36.tages = 'Poetry';
  b36.description="In Clarity & Connection, Yung Pueblo describes how intense emotions accumulate in our subconscious and condition us to act and react in certain ways. In his characteristically spare, poetic style, he guides readers through the excavation and release of the past that is required for growth.\n\nTo be read on its own or as a complement to Inward, Yung Pueblo’s second work is a powerful resource for those invested in the work of personal transformation, building self-awareness, and deepening their connection with others. ";
  await BookModelGetxController.to.createBookMode(b36);
  ////
  BookModel b37 = BookModel();
  b37.imageUrl = 'imagGratBook/WarandPeace.png';
  b37.autherName = 'Rupi Kaur';
  b37.bookName = 'CMilk and Honey';
  b37.languageBook = 'English';
  b37.longTime = '7' ;
  b37.tages = 'Poetry';
  b37.description="The book is divided into four chapters, and each chapter serves a different purpose. Deals with a different pain. Heals a different heartache. milk and honey takes readers through a journey of the most bitter moments in life and finds sweetness in them because there is sweetness everywhere if you are just willing to look.";
  await BookModelGetxController.to.createBookMode(b2);
  ////
  BookModel b38 = BookModel();
  b38.imageUrl = 'imagGratBook/Hamlet.png';
  b38.autherName = 'Michaela Angemeer';
  b38.bookName = "You'll Come Back to Yourself";
  b38.languageBook = 'English';
  b38.longTime = '7' ;
  b38.tages = 'Poetry';
  b38.description="“A compelling story, and only too realistic.” —Lawrence H. Summers, former U.S. Treasury Secretary\n\n\“Every catastrophe begins with a little problem that doesn’t get fixed.\” So says Pauline Green, president of the United States, in Follett’s nerve-racking drama of international tension.\n\nA shrinking oasis in the Sahara Desert; a stolen US Army drone; an uninhabited Japanese island; and one country’s secret stash of deadly chemical poisons: all these play roles in a relentlessly escalating crisis.\n\nStruggling to prevent the outbreak of world war are a young woman intelligence officer; a spy working undercover with jihadists; a brilliant Chinese spymaster; and Pauline herself, beleaguered by a populist rival for the next president election.\n\nNever is an extraordinary novel, full of heroines and villains, false prophets and elite warriors, jaded politicians and opportunistic revolutionaries. It brims with cautionary wisdom for our times, and delivers a visceral, heart-pounding read that transports readers to the brink of the unimaginable.";
  await BookModelGetxController.to.createBookMode(b38);
  ////
  BookModel b39 = BookModel();
  b39.imageUrl = 'imagGratBook/TheOdyssey.png';
  b39.autherName = 'Michaela Angemeer';
  b39.bookName = "Humans";
  b39.languageBook = 'English';
  b39.longTime = '7' ;
  b39.tages = 'Classics';
  b39.description="Brandon Stanton’s new book, Humans—his most moving and compelling book to date—shows us the world.\n\nBrandon Stanton created Humans of New York in 2010. What began as a photographic census of life in New York City, soon evolved into a storytelling phenomenon. A global audience of millions began following HONY daily. Over the next several years, Stanton broadened his lens to include people from across the world.\n\nTraveling to more than forty countries, he conducted interviews across continents, borders, and language barriers. Humans is the definitive catalogue of these travels. The faces and locations will vary from page to page, but the stories will feel deeply familiar. Told with candor and intimacy, Humans will resonate with readers across the globe—providing a portrait of our shared experience.";
  await BookModelGetxController.to.createBookMode(b39);

  BookModel b40 = BookModel();
  b40.imageUrl = 'imagGratBook/MadameBovary.png';
  b40.autherName = 'Brandon Stanton';
  b40.bookName = "Humans of New York";
  b40.languageBook = 'English';
  b40.longTime = '7' ;
  b40.tages = 'Classics';
  b40.description="With over 500 vibrant, full-color photos, Humans of New York: Stories is an insightful and inspiring collection of portraits of the lives of New Yorkers.\n\nHumans of New York: Stories is the culmination of five years of innovative storytelling on the streets of New York City. During this time, photographer Brandon Stanton stopped, photographed, and interviewed more than ten thousand strangers, eventually sharing their stories on his blog, Humans of New York.\n\nIn Humans of New York: Stories, the interviews accompanying the photographs go deeper, exhibiting the intimate storytelling that the blog has become famous for today. Ranging from whimsical to heartbreaking, these stories have attracted a global following of more than 30 million people across several social media platforms.";
  await BookModelGetxController.to.createBookMode(b40);
  ////
  BookModel b41 = BookModel();
  b41.imageUrl = 'imagGratBook/InSearchofLostTimeby.png';
  b41.autherName = 'Brandon Stanton';
  b41.bookName = "Little Humans";
  b41.languageBook = 'English';
  b41.longTime = '7' ;
  b41.tages = 'Classics';
  b41.description="Street photographer and storyteller extraordinaire Brandon Stanton is the creator of the wildly popular blog \"Humans of New York.\" He is also the author of the #1 New York Times bestseller Humans of New York.\n\nTo create Little Humans, a 40-page photographic picture book for young children, he's combined an original narrative with some of his favorite children's photos from the blog, in addition to all-new exclusive portraits. The result is a hip, heartwarming ode to little humans everywhere.";
  await BookModelGetxController.to.createBookMode(b41);
  ////
}

