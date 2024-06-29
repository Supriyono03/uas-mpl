import 'package:facebook/features/news-feed/widgets/post_card.dart';
import 'package:facebook/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/post.dart';

class MemoryScreen extends StatefulWidget {
  static const String routeName = '/memory';
  const MemoryScreen({super.key});

  @override
  State<MemoryScreen> createState() => _MemoryScreenState();
}

class _MemoryScreenState extends State<MemoryScreen> {
  final today = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    final posts = [
      Post(
        user: user,
        time: '${today.day} Terima kasih ${today.month}, ${today.year - 1}',
        shareWith: 'public',
        content:
            'Rap iNDO Musim 3 (2023) telah menemukan 9 Teratas untuk memasuki Final, menjanjikan pertarungan yang sangat intens.\n\nEpisode terakhir Rap Viet Musim 3 (2023) telah resmi berakhir dan pertunjukan telah berakhir menemukan 9 wajah yang menjanjikan untuk memasuki babak Final untuk memperebutkan posisi juara.\n\nDramatis, tangguh dan penuh kejutan hingga saat-saat terakhir, Huynh Cong Hieu dari tim B Ray melampaui 3 lawannya Yuno BigBoi, Richie D. ICY, gung0cay untuk memenangkan kejuaraan tiket pertama ke Final untuk timnya.\n\nDi Grup F, tak kalah dengan rekan satu timnya, 24k.Right juga telah meraih tiket ke Final setelah mengalahkan tim SMO Andree Tangan Kanan, Phap Kieu - tim BigDaddy dan Toi dari Thailand tim VG di grup F.\n\nAkhir dari seluruh penampilan kontestan di babak Phat Pha juga merupakan waktu dimana 3 juri berkonsultasi untuk mengambil keputusan memilih penerima Topi Emas mereka untuk melanjutkan ke malam final Rap Vietnam Musim 3 (2023).\n\nJuri wanita Suboi memutuskan untuk memberikan topi emas kepada anggota tim Pelatih BigDaddy - Phap Kieu. Selanjutnya SMO adalah orang yang dipercaya oleh Hakim Karik untuk memberikan topinya. Akhirnya, Juri JustaTee memutuskan untuk memberikan Topi Emasnya kepada Double2T.\n\nDengan demikian, susunan 9 Teratas yang memasuki Final telah selesai termasuk: Huynh Cong Hieu, 24k.Kanan – Tim B Ray; Liu Grace, Mikelodic – VG Tim Thailand; SMO, Rhyder – Tangan Kanan Tim Andree dan Phap Kieu, Double2T, Tez – Tim BigDaddy.',
        image: ['assets/images/post/1.jpg'],
        like: 8500,
        angry: 0,
        comment: 902,
        haha: 43,
        love: 2200,
        lovelove: 59,
        sad: 36,
        share: 98,
        wow: 7,
        type: 'memory',
      ),
      Post(
        user: user,
        time: '${today.day} Terima kasih ${today.month}, ${today.year - 2}',
        shareWith: 'public',
        content:
            '✅ 10 tahun dedikasinya terhadap sepak bola remaja indo\n✅ Orang pertama yang membawa indo ke Piala Dunia di level U20 🌏🇻€\n✅ Memenangkan gelar pertama bersama Indo U23 di turnamen U23 Asia Tenggara 2023 🏆\n nSeorang guru sejati yang berdedikasi dalam membina masa depan sepak bola tanah air. Terima kasih, Pelatih Hoang Anh Tuan ❤️\n\n📸 VFF\n\n#goalvietnam #hot #ASIA #INDONESIA',
        image: ['assets/images/post/2.jpg'],
        like: 163,
        love: 24,
        comment: 5,
        type: 'memory',
      ),
      Post(
        user: user,
        time: '${today.day} thg ${today.month}, ${today.year - 3}',
        shareWith: 'public',
        content:
            'Ada tempat yang selalu memberiku kedamaian dan kehangatan ajaib, di mana Kakek sedang beristirahat bersama rekan satu timnya.. Mỗi lần nhìn vào lá cờ Tổ quốc là thêm một lần mình nhớ Ông. Mỗi lần nhìn lên bầu trời, là thêm một lần mình chào Ông nội. Chắc bởi Ông đã hoá thân vào núi sống, mây trời của đất nước đã từ rất lâu trước khi mình được sinh ra trên cõi đời này.\n\nMình vẫn hay tự nhủ với bản thân rằng: Trong hành trình trưởng thành, sẽ có những lúc mệt mỏi yếu đuối, những khi chán ghét cuộc sống, nhưng mong bản thân hãy luôn nhớ rằng từng thớ thịt, từng dòng máu trong người mình là sự tiếp nối của thế hệ cha anh - những tiền nhân đã gác lại những nỗi niềm hạnh phúc riêng tư, những trang sách, những giảng đường, hay những mâm cơm gia đình bé nhỏ, để dùng máu đào của mình nhuộm lên lá cờ tổ quốc thêm đỏ chói, để thế hệ mai sau thêm bình an, ấm yên.\nKính cẩn nghiêng mình trước hồn thiêng dân tộc đã chở che cho quốc thái dân an. Mong nguyện một cuộc sống ổn định, bình an tới các gia đình liệt sĩ, những thương bệnh binh. \n\nKính chúc các mẹ Việt Nam anh hùng mến thương luôn mạnh khỏe. \n\nChúng con trân trọng và biết ơn giá trị hòa bình ngày hôm nay và mãi về sau. Luôn hướng về tổ quốc.\n\nChưa bao giờ ngừng tự hào về Ông và những anh hùng liệt sĩ.\nCon thương Ông nội thật nhiều.\nNgày 27/7/2023.',
        image: [
          'assets/images/post/10.jpg',
          'assets/images/post/11.jpg',
        ],
        like: 15000,
        love: 7300,
        comment: 258,
        haha: 235,
        share: 825,
        lovelove: 212,
        wow: 9,
        layout: 'classic',
        type: 'memory',
      ),
      Post(
        user: user,
        time: '${today.day} thg ${today.month}, ${today.year - 4}',
        shareWith: 'public',
        content:
            'Jalur pengambilan paling mulus \n\n1. Kamu mau tahu siapa gebetanku? - Kamu ingin tahu siapa gebetanku?\nSederhana. Baca saja kata pertama :> - Sederhana. Cukup baca lagi kata pertama\n\n2. Hei, sepertinya ponselku rusak - Sepertinya ponselku rusak \nTidak ada nomor teleponmu di dalamnya. - Karena tidak ada nomor teleponmu di ityy \nBisakah kamu memperbaikinya? 😉 - Bisakah kamu memperbaikinya?\n\n3. Menurut perhitunganku, semakin kamu tersenyum, semakin aku terjatuh - Menurut perhitunganku, semakin banyak kamu tertawa, semakin aku terjatuh\n\n4. Aku tidak bisa mengubah air menjadi anggur - Aku tidak bisa mengubah air menjadi anggur\nTapi aku bisa mengubahmu menjadi milikku - Tapi aku bisa mengubahmu menjadi "milikku"\n\n5. Bolehkah aku memotretmu? - Izinkan aku berfoto bersamamu hem\nAh, untuk memberi tahu Santa apa yang kuinginkan di Natal tahun ini - Ah, untuk memberi tahu Santa hadiah apa yang kuinginkan di Natal tahun ini \n\nBerlaku untuk teman dekat, Tidak apa-apa jika diberikan kepada naksir atau kekasihmu   ',
        image: [
          'assets/images/post/3.jpg',
          'assets/images/post/4.jpg',
          'assets/images/post/5.jpg'
        ],
        like: 15000,
        love: 7300,
        comment: 258,
        haha: 235,
        share: 825,
        lovelove: 212,
        wow: 9,
        layout: 'classic',
        type: 'memory',
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            splashRadius: 20,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.5),
              child: Container(
                color: Colors.black12,
                height: 0.5,
              )),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Merayakan',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              IconButton(
                onPressed: () {},
                splashRadius: 20,
                icon: const Icon(
                  Icons.settings_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/memory_header.png',
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Text(
                      'Kami harap Anda menikmati mengunjungi kembali dan berbagi kenangan di Facebook, mulai dari kenangan terkini hingga kenangan masa lalu.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black26,
              width: double.infinity,
              height: 8,
            ),
            for (int i = 0; i < posts.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PADA HARI INI',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          '${i + 1} tahun lalu',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Colors.black12,
                    margin: const EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                  ),
                  PostCard(post: posts[i]),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/message.png',
                                color: Colors.black,
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Mengirim',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/share-fill.png',
                                color: Colors.black,
                                width: 22,
                                height: 22,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Membagikan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Colors.black26,
                    width: double.infinity,
                    height: 8,
                  ),
                ],
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Icon(
                    Icons.add_circle,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Text(
                    'Tata letak hari jadi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset('assets/images/mem1.jpg')),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset('assets/images/mem2.jpg')),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset('assets/images/mem3.jpg')),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset('assets/images/mem4.jpg')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black26,
              width: double.infinity,
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: ImageIcon(
                AssetImage('assets/images/edit.png'),
                size: 35,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Text(
                'Buat artikel baru',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.black26,
              width: double.infinity,
              height: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(user.avatar),
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Apa yang kamu pikirkan?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black26,
              width: double.infinity,
              height: 0.5,
            ),
            const SizedBox(
              height: 5,
            ),
            const IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.red,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mendaftar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black26,
                    width: 1,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Gambar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.black26,
              width: double.infinity,
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
