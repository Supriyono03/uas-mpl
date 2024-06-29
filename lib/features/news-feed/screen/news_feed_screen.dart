import 'package:facebook/features/news-feed/widgets/add_story_card.dart';
import 'package:facebook/features/news-feed/widgets/post_card.dart';
import 'package:facebook/features/news-feed/widgets/story_card.dart';
import 'package:facebook/models/post.dart';
import 'package:facebook/models/story.dart';
import 'package:facebook/models/user.dart';
import 'package:facebook/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsFeedScreen extends StatefulWidget {
  static double offset = 0;
  final ScrollController parentScrollController;
  const NewsFeedScreen({super.key, required this.parentScrollController});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  Color colorNewPost = Colors.transparent;
  final stories = [
    Story(
      user: User(
        name: 'Doraemon',
        avatar: 'assets/images/user/doraemon.jpg',
        type: 'page',
      ),
      image: ['assets/images/story/1.jpg'],
      time: ['12 menit'],
      shareWith: 'public',
    ),
    Story(
      user: User(
          name: 'Dipa Ismail', avatar: 'assets/images/user/sachcungoc.jpg'),
      image: ['assets/images/story/2.jpg'],
      time: ['3 jam'],
      shareWith: 'friends',
    ),
    Story(
      user: User(
        name: 'Supriyono',
        avatar: 'assets/images/user/vaffc.jpg',
        type: 'page',
      ),
      image: ['assets/images/story/3.jpg'],
      time: ['5 jam'],
      shareWith: 'friends-of-friends',
    ),
    Story(
      user:
          User(name: 'Septiasih Nur Inayah', avatar: 'assets/images/user/minhhuong.jpg'),
      image: [
        'assets/images/story/4.jpg',
        'assets/images/story/5.jpg',
        'assets/images/story/6.jpg',
        'assets/images/story/7.jpg',
      ],
      video: ['assets/videos/2.mp4', 'assets/videos/1.mp4'],
      time: ['1 menit'],
      shareWith: 'friends',
    ),
    Story(
      user: User(name: 'Khanh', avatar: 'assets/images/user/khanhvy.jpg'),
      video: ['assets/videos/3.mp4'],
      time: ['1 menit'],
      shareWith: 'friends',
    ),
  ];

  final posts = [
    Post(
      user: User(
        name: 'Dai Pat',
        avatar: 'assets/images/user/daiphatthanh.jpg',
        type: 'page',
      ),
      time: '16 jam',
      shareWith: 'public',
      content:
          'Rap Indo Musim 3 (2023) telah menemukan 9 Teratas untuk memasuki Final, menjanjikan pertarungan yang sangat intens.\n\nEpisode terakhir Rap Viet Musim 3 (2023) telah resmi berakhir dan pertunjukan telah berakhir menemukan 9 wajah yang menjanjikan untuk memasuki babak Final untuk memperebutkan posisi juara.\n\nDramatis, tangguh dan penuh kejutan hingga saat-saat terakhir, Huynh Cong Hieu dari tim B Ray melampaui 3 lawannya Yuno BigBoi, Richie D. ICY, gung0cay untuk memenangkan kejuaraan tiket pertama ke Final untuk timnya.\n\nDi Grup F, tak kalah dengan rekan satu timnya, 24k.Right juga telah meraih tiket ke Final setelah mengalahkan tim SMO Andree Tangan Kanan, Phap Kieu - tim BigDaddy dan Toi dari Thailand tim VG di grup F.\n\nAkhir dari seluruh penampilan kontestan di babak Phat Pha juga merupakan waktu dimana 3 juri berkonsultasi untuk mengambil keputusan memilih penerima Topi Emas mereka untuk melanjutkan ke malam final Rap Vietnam Musim 3 (2023).\n\nJuri wanita Suboi memutuskan untuk memberikan topi emas kepada anggota tim Pelatih BigDaddy - Phap Kieu. Selanjutnya SMO adalah orang yang dipercaya oleh Hakim Karik untuk memberikan topinya. Akhirnya, Juri JustaTee memutuskan untuk memberikan Topi Emasnya kepada Double2T.\n\nDengan demikian, susunan 9 Teratas yang memasuki Final telah selesai termasuk: Huynh Cong Hieu, 24k.Kanan – Tim B Ray; Liu Grace, Mikelodic – VG Tim Thailand; SMO, Rhyder – Tangan Kanan Tim Andree dan Phap Kieu, Double2T, Tez – Tim BigDaddy.',
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
    ),
    Post(
      user: User(
        verified: true,
        name: 'GOAL Indo',
        avatar: 'assets/images/user/goal.png',
        cover: 'assets/images/user/goal-cover.png',
        type: 'page',
        likes: 285308,
        followers: 379103,
        bio:
            'GOAL adalah situs berita sepak bola terbesar di dunia, dengan pembaruan multidimensi yang berkelanjutan di setiap turnamen',
        pageType: 'Perusahaan media/berita',
        socialMedias: [
          SocialMedia(
            icon: 'assets/images/email.png',
            name: 'vietnamdesk@goal.com',
            link: 'mailto:vietnamdesk@goal.com',
          ),
          SocialMedia(
            icon: 'assets/images/link.png',
            name: 'goal.com/vn',
            link: 'goal.com/vn',
          ),
        ],
        posts: [
          Post(
            user: User(
              verified: true,
              name: 'GOAL Indo',
              avatar: 'assets/images/user/goal.png',
            ),
            time: '3 menit',
            shareWith: 'public',
            content:
                '✅ 10 tahun dedikasinya terhadap sepak bola remaja Vietnam\n✅ Orang pertama yang membawa Vietnam ke Piala Dunia di level U20 🌏🇻€\n✅ Memenangkan gelar pertama bersama Vietnam U23 di turnamen U23 Asia Tenggara 2023 🏆\nnSeorang guru sejati yang berdedikasi dalam membina masa depan sepak bola tanah air. Terima kasih, Pelatih Hoang Anh Tuan ❤️\n\n📸 VFF\n\n#hot #U23 #Indo',
            image: ['assets/images/post/2.jpg'],
            like: 163,
            love: 24,
            comment: 5,
            type: 'memory',
          ),
          Post(
            user: User(
              verified: true,
              name: 'GOAL Indo',
              avatar: 'assets/images/user/goal.png',
            ),
            time: '3 menit',
            shareWith: 'public',
            content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
            image: [
              'assets/images/post/3.jpg',
              'assets/images/post/5.jpg',
              'assets/images/post/12.jpg',
              'assets/images/post/13.jpg',
              'assets/images/post/14.jpg',
              'assets/images/post/15.jpg',
              'assets/images/post/16.jpg',
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
            user: User(
              verified: true,
              name: 'GOAL Indo',
              avatar: 'assets/images/user/goal.png',
            ),
            time: '3 menit',
            shareWith: 'public',
            content:
                'Jalur pengambilan paling mulus \n\n1. Kamu mau tahu siapa gebetanku? - Kamu ingin tahu siapa gebetanku?\nSederhana. Baca saja kata pertama :> - Sederhana. Cukup baca lagi kata pertama\n\n2. Hei, sepertinya ponselku rusak - Sepertinya ponselku rusak \nTidak ada nomor teleponmu di dalamnya. - Karena tidak ada nomor teleponmu di ityy \nBisakah kamu memperbaikinya? 😉 - Bisakah kamu memperbaikinya?\n\n3. Menurut perhitunganku, semakin kamu tersenyum, semakin aku terjatuh - Menurut perhitunganku, semakin banyak kamu tertawa, semakin aku terjatuh\n\n4. Aku tidak bisa mengubah air menjadi anggur - Aku tidak bisa mengubah air menjadi anggur\nTapi aku bisa mengubahmu menjadi milikku - Tapi aku bisa mengubahmu menjadi "milikku"\n\n5. Bolehkah aku memotretmu? - Izinkan aku berfoto bersamamu hem\nAh, untuk memberi tahu Santa apa yang kuinginkan di Natal tahun ini - Ah, untuk memberi tahu Santa hadiah apa yang kuinginkan di Natal tahun ini \n\nBerlaku untuk teman dekat, Tidak apa-apa jika diberikan kepada naksir atau kekasihmu',
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
            layout: 'column',
            type: 'memory',
          ),
        ],
      ),
      time: '3 menit',
      shareWith: 'public',
      content:
          '✅ 10 tahun dedikasinya terhadap sepak bola remaja Vietnam\n✅ Orang pertama yang membawa Vietnam ke Piala Dunia di level U20 🌏🇻€\n✅ Memenangkan gelar pertama bersama Vietnam U23 di turnamen U23 Asia Tenggara 2023 🏆\nnSeorang guru sejati yang berdedikasi dalam membina masa depan sepak bola tanah air. Terima kasih, Pelatih Hoang Anh Tuan ❤️\n\n📸 VFF\n\n#INDO #U23',
      image: ['assets/images/post/2.jpg'],
      like: 163,
      love: 24,
      comment: 5,
    ),
    Post(
      user: User(
        name: 'Khanh Vy',
        verified: true,
        cover: 'assets/images/user/khanhvy-cover.jpg',
        avatar: 'assets/images/user/khanhvy.jpg',
        bio: '- Youtube r - Penulis Buku',
        socialMedias: [
          SocialMedia(
            icon: 'assets/images/instagram.png',
            name: 'khanhvyccf',
            link: 'instagram.com/khanhvyccf',
          ),
        ],
        topFriends: [
          User(
            name: 'Khanh Vy',
            avatar: 'assets/images/user/khanhvy.jpg',
          ),
          User(
            name: 'Leo Messi',
            avatar: 'assets/images/user/messi.jpg',
          ),
          User(
            name: 'Minh',
            avatar: 'assets/images/user/minhhuong.jpg',
          ),
          User(
            name: 'Bao',
            avatar: 'assets/images/user/baongan.jpg',
          ),
          User(
            name: 'Ha Lin',
            avatar: 'assets/images/user/halinh.jpg',
          ),
          User(
            name: 'Minh TrI',
            avatar: 'assets/images/user/minhtri.jpg',
          ),
        ],
      ),
      time: '3 menit',
      shareWith: 'public',
      content:
          'Ada tempat yang selalu memberiku kedamaian dan kehangatan ajaib, di mana Kakek sedang beristirahat bersama rekan satu timnya. Setiap kali saya melihat bendera Nasional, saya merindukannya sekali lagi. Setiap kali aku melihat ke langit, aku menyapa Kakek sekali lagi. Mungkin karena dia menjelma menjadi gunung hidup, awan dan langit negeri jauh sebelum aku dilahirkan ke dunia ini.\n\nAku sering berkata pada diriku sendiri: Selama perjalanan tumbuh dewasa, aku akan Ada saatnya kamu lelah dan lemah , masa-masa di mana kamu membenci kehidupan, tapi aku harap kamu selalu ingat bahwa setiap serat, setiap garis darah di tubuhmu adalah kelanjutan dari generasi ayahmu - para pendahulu yang mengesampingkan kebahagiaan Pribadi, halaman buku, ruang kuliah, atau kecil nampan makan malam keluarga, untuk menggunakan darah Anda untuk mewarnai bendera nasional menjadi merah cerah, sehingga generasi mendatang akan lebih damai dan hangat.\nBersujud hormat di hadapan jiwa suci bangsa yang telah melindungi negara dan rakyatnya. Mendoakan kehidupan yang stabil dan damai bagi keluarga para syuhada serta tentara yang sakit dan terluka. \n\nKami mendoakan kesehatan yang baik bagi semua ibu Vietnam tercinta yang kami cintai. \n\nKami mengapresiasi dan mensyukuri nilai perdamaian saat ini dan selamanya. Selalu memandang ke tanah air.\nJangan pernah berhenti bangga pada Kakek dan para martir yang heroik.\nAku sangat mencintai Kakek.\n27 Juli 2023.',
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
    ),
    Post(
      user: User(
          name: 'Khanh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
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
    ),
    Post(
      user: User(
        name: 'Minh',
        avatar: 'assets/images/user/minhhuong.jpg',
        cover: 'assets/images/story/6.jpg',
        hometown: 'Vietri, Phú Thọ, Vietnam',
        educations: [
          Education(
              majors: 'Desain Grafis - Desain Grafis',
              school: 'Seni Industri'),
          Education(majors: '', school: 'Delegasi SMA Indo Tri'),
        ],
        address: 'Jakarta',
        stories: [
          Story(
            user: User(
              name: 'Minh',
              avatar: 'assets/images/user/minhhuong.jpg',
            ),
            image: ['assets/images/story/3.jpg'],
            time: ['5 jam'],
            shareWith: 'friends-of-friends',
            name: '😧',
          ),
          Story(
            user: User(
              name: 'Minh',
              avatar: 'assets/images/user/minhhuong.jpg',
            ),
            image: [
              'assets/images/story/4.jpg',
              'assets/images/story/5.jpg',
              'assets/images/story/6.jpg',
              'assets/images/story/7.jpg',
            ],
            video: ['assets/videos/2.mp4', 'assets/videos/1.mp4'],
            time: ['1 menit'],
            shareWith: 'friends',
            name: '18+',
          ),
          Story(
            user: User(
              name: 'Minh',
              avatar: 'assets/images/user/minhhuong.jpg',
            ),
            video: ['assets/videos/3.mp4'],
            time: ['1 menit'],
            shareWith: 'friends',
            name: '🎨',
          ),
        ],
        socialMedias: [
          SocialMedia(
            icon: 'assets/images/instagram.png',
            name: 'minh.huong.le',
            link: 'instagram.com/minh.huong.le',
          ),
          SocialMedia(
            icon: 'assets/images/tiktok.png',
            name: 'minh.huong.le',
            link: 'tiktok.com/minh.huong.le',
          ),
        ],
        topFriends: [
          User(
            name: 'Khanh Vy',
            avatar: 'assets/images/user/khanhvy.jpg',
          ),
          User(
            name: 'Leo Messi',
            avatar: 'assets/images/user/messi.jpg',
          ),
          User(
            name: 'Minh Hương',
            avatar: 'assets/images/user/minhhuong.jpg',
          ),
          User(
            name: 'Bao',
            avatar: 'assets/images/user/baongan.jpg',
          ),
          User(
            name: 'Hà Linhh',
            avatar: 'assets/images/user/halinh.jpg',
          ),
          User(
            name: 'Minh Trí',
            avatar: 'assets/images/user/minhtri.jpg',
          ),
        ],
      ),
      time: '3 menit',
      shareWith: 'public',
      content: 'My chiuuu 😚',
      image: [
        'assets/images/post/6.jpg',
        'assets/images/post/7.jpg',
        'assets/images/post/8.jpg',
        'assets/images/post/9.jpg',
      ],
      like: 438,
      love: 285,
      comment: 258,
      haha: 3,
      share: 825,
      lovelove: 14,
      sad: 1,
      wow: 2,
      layout: 'classic',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/12.jpg',
        'assets/images/post/13.jpg',
        'assets/images/post/14.jpg',
        'assets/images/post/15.jpg',
        'assets/images/post/16.jpg'
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'classic',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/3.jpg',
        'assets/images/post/5.jpg',
        'assets/images/post/12.jpg',
        'assets/images/post/13.jpg',
        'assets/images/post/14.jpg',
        'assets/images/post/15.jpg',
        'assets/images/post/16.jpg',
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'classic',
    ),
    Post(
      user:
          User(name: 'Minh', avatar: 'assets/images/user/minhhuong.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'My chiuuu 😚',
      image: [
        'assets/images/post/6.jpg',
        'assets/images/post/7.jpg',
        'assets/images/post/8.jpg',
        'assets/images/post/9.jpg',
      ],
      like: 438,
      love: 285,
      comment: 258,
      haha: 3,
      share: 825,
      lovelove: 14,
      sad: 1,
      wow: 2,
      layout: 'column',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
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
      layout: 'column',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content:
          'Ada tempat yang selalu memberiku kedamaian dan kehangatan ajaib, di mana Kakek sedang beristirahat bersama rekan satu timnya. Setiap kali saya melihat bendera Nasional, saya merindukannya sekali lagi. Setiap kali aku melihat ke langit, aku menyapa Kakek sekali lagi. Mungkin karena dia menjelma menjadi gunung hidup, awan dan langit negeri jauh sebelum aku dilahirkan ke dunia ini.\n\nAku sering berkata pada diriku sendiri: Selama perjalanan tumbuh dewasa, aku akan Ada saatnya kamu lelah dan lemah , masa-masa di mana kamu membenci kehidupan, tapi aku harap kamu selalu ingat bahwa setiap serat, setiap garis darah di tubuhmu adalah kelanjutan dari generasi ayahmu - para pendahulu yang mengesampingkan kebahagiaan Pribadi, halaman buku, ruang kuliah, atau kecil nampan makan malam keluarga, untuk menggunakan darah Anda untuk mewarnai bendera nasional menjadi merah cerah, sehingga generasi mendatang akan lebih damai dan hangat.\nBersujud hormat di hadapan jiwa suci bangsa yang telah melindungi negara dan rakyatnya. Mendoakan kehidupan yang stabil dan damai bagi keluarga para syuhada serta tentara yang sakit dan terluka. \n\nKami mendoakan kesehatan yang baik bagi semua ibu Vietnam tercinta yang kami cintai. \n\nKami mengapresiasi dan mensyukuri nilai perdamaian saat ini dan selamanya. Selalu memandang ke tanah air.\n\nJangan pernah berhenti bangga pada Kakek dan para martir yang heroik.\nAku sangat mencintai Kakek.\n27 Juli 2023.',
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
      layout: 'column',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/3.jpg',
        'assets/images/post/5.jpg',
        'assets/images/post/12.jpg',
        'assets/images/post/13.jpg',
        'assets/images/post/14.jpg',
        'assets/images/post/15.jpg',
        'assets/images/post/16.jpg',
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'column',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/3.jpg',
        'assets/images/post/5.jpg',
        'assets/images/post/12.jpg',
        'assets/images/post/13.jpg',
        'assets/images/post/14.jpg',
        'assets/images/post/15.jpg',
        'assets/images/post/16.jpg',
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'quote',
    ),
    Post(
      user:
          User(name: 'Minh', avatar: 'assets/images/user/minhhuong.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'My chiuuu 😚',
      image: [
        'assets/images/post/6.jpg',
        'assets/images/post/7.jpg',
        'assets/images/post/8.jpg',
        'assets/images/post/9.jpg',
      ],
      like: 438,
      love: 285,
      comment: 258,
      haha: 3,
      share: 825,
      lovelove: 14,
      sad: 1,
      wow: 2,
      layout: 'quote',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 menit',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/3.jpg',
        'assets/images/post/5.jpg',
        'assets/images/post/12.jpg',
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'quote',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 phút',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/3.jpg',
        'assets/images/post/5.jpg',
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'quote',
    ),
    Post(
      user: User(
          name: 'Khánh Vy',
          verified: true,
          avatar: 'assets/images/user/khanhvy.jpg'),
      time: '3 phút',
      shareWith: 'public',
      content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
      image: [
        'assets/images/post/3.jpg',
        'assets/images/post/5.jpg',
        'assets/images/post/12.jpg',
      ],
      like: 15000,
      love: 7300,
      comment: 258,
      haha: 235,
      share: 825,
      lovelove: 212,
      wow: 9,
      layout: 'frame',
    ),
    Post(
      user:
          User(name: 'Minh Hương', avatar: 'assets/images/user/minhhuong.jpg'),
      time: '3 phút',
      shareWith: 'public',
      content: 'My chiuuu 😚',
      image: [
        'assets/images/post/6.jpg',
        'assets/images/post/7.jpg',
        'assets/images/post/8.jpg',
        'assets/images/post/9.jpg',
      ],
      like: 438,
      love: 285,
      comment: 258,
      haha: 3,
      share: 825,
      lovelove: 14,
      sad: 1,
      wow: 2,
      layout: 'frame',
    ),
  ];

  ScrollController scrollController =
      ScrollController(initialScrollOffset: NewsFeedScreen.offset);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).user;
    scrollController.addListener(() {
      if (widget.parentScrollController.hasClients) {
        widget.parentScrollController.jumpTo(
            widget.parentScrollController.offset +
                scrollController.offset -
                NewsFeedScreen.offset);
        NewsFeedScreen.offset = scrollController.offset;
      }
    });
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user.avatar),
                    radius: 20,
                  ),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      setState(() {
                        colorNewPost = Colors.transparent;
                      });
                    },
                    onTapUp: (tapUpDetails) {
                      setState(() {
                        colorNewPost = Colors.black12;
                      });
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Colors.black12,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: colorNewPost,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text('Apa yang kamu pikirkan?'),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.image,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 5,
            color: Colors.black26,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: AddStoryCard(),
                ),
                ...stories
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child: StoryCard(story: e),
                        ))
                    .toList()
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 5,
            color: Colors.black26,
          ),
          Column(
            children: posts
                .map((e) => Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        PostCard(post: e),
                        Container(
                          width: double.infinity,
                          height: 5,
                          color: Colors.black26,
                        ),
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
