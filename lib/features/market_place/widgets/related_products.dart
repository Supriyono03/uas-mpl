import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/constants/global_variables.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../models/user.dart';
import '../screens/product_details_screen.dart';

class RelatedProducts extends StatefulWidget {
  const RelatedProducts({super.key});

  @override
  State<RelatedProducts> createState() => _RelatedProductsState();
}

class _RelatedProductsState extends State<RelatedProducts> {
  final List<Product> products = [
    Product(
      name:
          'Pewarna Rambut Smoky Black Blue, Smoky Black Blue Tidak Dikelantang | Rambut Chenglove, Rambut Chenglove',
      price: 160000,
      user:
          User(name: 'Minh Hương', avatar: 'assets/images/user/minhhuong.jpg'),
      status: 'Baru',
      description:
          'Pewarna rambut Smoky Blue Black yang tidak dikelantang\n💙 Smoky Black Blue lebih gelap dari Light Blue Sea dan lebih cerah dari Charcoal Blue - warna biru seimbang yang dapat diwarnai oleh siapa pun. Hal paling "populer" tentang warna ini menurut Cheng adalah kemilau smoky yang lembut, memberikan kilau magis pada rambut dengan tetap mempertahankan latar belakang gelap yang cocok untuk semua warna kulit.\n💙 Smoky Black Blue memiliki tampilan Cantik, dinamis, modern dan individual. Tidak hanya cocok untuk jalan-jalan, berfoto, mewarnai rambut dengan warna Smokey Blue Black yang terang, Anda juga bisa memakainya ke sekolah atau bekerja tanpa terlihat terlalu mencolok atau terlalu terang.\n💙 Pewarna rambut Smoky Blue Black hanya mulai 65k . Silakan kirim pesan ke Cheng jika Anda memerlukan saran lebih lanjut tentang cara mewarnai di rumah.\n🔸 Gratis 1 botol kondisioner dengan pembelian\n🔸 Cocok untuk semua warna kulit\n🔸 Dibuat dengan rambut hitam alami tanpa perlu pemutihan\n🔸 Tahan luntur warna : 1-1,5 bulan\n🔸 Cara penggunaan: campurkan pewarna rambut Smoke Blue Black sesuai formula dan ikuti langkah pewarnaannya. Semuanya ada dalam instruksi yang dilampirkan pada produk.',
      location: 'Bnayumas',
      images: [
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdt2aolo12',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssb37wc7',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssqjgs56',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdsschsc07',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssdwcs54',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssfax8be',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj2ffdssgpho9e',
      ],
    ),
    Product(
      name:
          'Set pakaian wanita MURIOKI mencakup kardigan rajutan pendek dan rok pendek memeluk pinggul yang modis',
      price: 149000,
      user: User(name: 'Hà Linhh', avatar: 'assets/images/user/halinh.jpg'),
      status: 'Baru',
      description:
          '👇Detail produk👇\nWarna: Pink/ khaki\nUkuran: S, M, L, XL,\nGaya: Seksi\nKain utama: Serat poliester\nGaya: Ketat\nJenis pakaian: Set rok\nBentuk kerah: Leher persegi\nPanjang lengan : Lengan pendek\nElemen populer: Rajutan\nCocok untuk: Pesta, liburan, pantai, kencan',
      location: 'Bnayumas',
      images: [
        'https://down-vn.img.susercontent.com/file/sg-11134211-7qvdl-lf0nyz2vq1yhc1',
        'https://down-vn.img.susercontent.com/file/a8916375b8b9a0770751a4ececca8604',
        'https://down-vn.img.susercontent.com/file/c7e3bc7cfbac3f913182aad21c7c9e5e',
        'https://down-vn.img.susercontent.com/file/10e207c47c07fffa110c5c208c7f58df',
      ],
    ),
    Product(
      name: 'Gaun Mina dengan punggung rendah, gaun panjang anggun',
      price: 139000,
      user: User(
          name: 'Nguyen Thi',
          avatar: 'assets/images/user/minhtuyen.jpg'),
      status: 'Bekas - Seperti baru',
      description: 'Produk 100% sama dengan deskripsi',
      location: 'Banyumas',
      images: [
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-livgbmwjka8i3c',
        'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-livgbmwjhh3m53',
      ],
    ),
    Product(
      name: 'Rok panjang 2 tali ala Korea dengan pinggang karet',
      price: 129000,
      user: User(name: 'Khánh Vy', avatar: 'assets/images/user/khanhvy.jpg'),
      status: 'Baru',
      description:
          '- Bahan kain khaki korea, rok lembut cocok untuk 4 musim\n- Produk 100% sesuai deskripsi. Gambar produk adalah foto asli yang diambil oleh toko itu sendiri dan memiliki hak cipta gambar\n- Asal: dirancang dan diproses oleh xixeoshop.',
      location: 'Bisakah',
      images: [
        'https://down-vn.img.susercontent.com/file/sg-11134201-22100-9uflrvt69piv6f',
        'https://down-vn.img.susercontent.com/file/sg-11134201-23010-gp0rfbdv8amve9',
        'https://down-vn.img.susercontent.com/file/sg-11134201-23010-kvpedtfw8amv59',
        'https://down-vn.img.susercontent.com/file/vn-11134201-7qukw-lere6ek7u2xj3b',
        'https://down-vn.img.susercontent.com/file/vn-11134201-7qukw-lere6ells1uf6e',
        'https://down-vn.img.susercontent.com/file/sg-11134201-22100-detjvwt69piv8a',
        'https://down-vn.img.susercontent.com/file/sg-11134201-23010-cgru6vuf0amv1b',
        'https://down-vn.img.susercontent.com/file/vn-11134201-7qukw-lere6e6mdz0q50',
      ],
    ),
  ];

  List<int> _current = [];
  @override
  void initState() {
    super.initState();
    _current = List.filled(products.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        for (int i = 0; i < products.length - 1; i += 2)
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 1),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(products[i].user.avatar),
                              radius: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              products[i].user.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            ProductDetailsScreen.routeName,
                            arguments: products[i],
                          );
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  CarouselSlider(
                                    items: products[i].images.map((e) {
                                      return Builder(
                                        builder: (BuildContext context) =>
                                            Image.network(
                                          e,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      );
                                    }).toList(),
                                    options: CarouselOptions(
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current[i] = index;
                                        });
                                      },
                                      height: 200,
                                      padEnds: false,
                                      scrollDirection: Axis.horizontal,
                                      clipBehavior: Clip.none,
                                      enableInfiniteScroll: false,
                                      viewportFraction: 1,
                                    ),
                                  ),
                                  Positioned.fill(
                                    bottom: 10,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: products[i]
                                            .images
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return Container(
                                            width: 6,
                                            height: 6,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 3),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white.withOpacity(
                                                    _current[i] == entry.key
                                                        ? 1
                                                        : 0.5)),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    products[i].name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.more_horiz_rounded,
                                  size: 16,
                                  color: GlobalVariables.iconColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 1),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(products[i + 1].user.avatar),
                              radius: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              products[i + 1].user.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            ProductDetailsScreen.routeName,
                            arguments: products[i + 1],
                          );
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  CarouselSlider(
                                    items: products[i + 1].images.map((e) {
                                      return Builder(
                                        builder: (BuildContext context) =>
                                            Image.network(
                                          e,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      );
                                    }).toList(),
                                    options: CarouselOptions(
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current[i + 1] = index;
                                        });
                                      },
                                      height: 200,
                                      padEnds: false,
                                      scrollDirection: Axis.horizontal,
                                      clipBehavior: Clip.none,
                                      enableInfiniteScroll: false,
                                      viewportFraction: 1,
                                    ),
                                  ),
                                  Positioned.fill(
                                    bottom: 10,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: products[i + 1]
                                            .images
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return Container(
                                            width: 6,
                                            height: 6,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 3),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white.withOpacity(
                                                    _current[i + 1] == entry.key
                                                        ? 1
                                                        : 0.5)),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    products[i + 1].name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.more_horiz_rounded,
                                  size: 16,
                                  color: GlobalVariables.iconColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
