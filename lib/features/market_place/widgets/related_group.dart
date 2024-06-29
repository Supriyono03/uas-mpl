import 'package:facebook/models/group.dart';
import 'package:flutter/material.dart';

class RelatedGroups extends StatelessWidget {
  const RelatedGroups({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = [
      Group(
        image: 'assets/images/user/ddh.png',
        name: 'Bertekad Masuk Universitas',
        members: '120K',
      ),
      Group(
        image: 'assets/images/user/tthtsv.jpg',
        name: 'UNIVERSITAS ILMU PENGETAHUAN ALAM - Universitas Nasional Kota Ho Chi Minh. HCM',
        members: '85K',
      ),
      Group(
        image: 'assets/images/user/vaffc.jpg',
        name: 'Klub Penggemar Sepak Bola Argentina Vietnam (VAFFC)',
        members: '90K',
      ),
      Group(
        image: 'assets/images/user/goal.png',
        name: 'Goal Indonesia',
        members: '40K',
      ),
    ];
    return Column(
      children: groups
          .map((e) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        e.image,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  e.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Grup Publik',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                child: Icon(
                                  Icons.circle,
                                  size: 2,
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${e.members} anggota',
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Bergabung',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
