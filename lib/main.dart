import 'package:flutter/material.dart';
import './detail_produk.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Produk")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(3.0, 20.0, 3.0, 20.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "pink sling bag",
                  deskripsi:
                      "pink sling bag memiliki warna yang cocok untuk fashion untuk wanita yang peminim",
                  harga: 120000,
                  gambar: "pinkbag.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "pink sling bag",
                deskripsi: "tas berkualitas yang sangat diminat.",
                harga: 120000,
                gambar: "pinkbag.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "black sling kbag",
                  deskripsi: "tas ini memiliki warna yang elegan.",
                  harga: 100000,
                  gambar: "blackbag.jpg",
                  star: 3,
                ),
              ));
            },
            child: ProductBox(
                nama: "black sling bag",
                deskripsi: "stok terbatas segera dapatkan keluaran terbarunya.",
                harga: 100000,
                gambar: "blackbag.jpg",
                star: 3),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "ladies sling bag",
                  deskripsi:
                      "ukuran dan bentuk yang cocok untuk dibawa belanja.",
                  harga: 300000,
                  gambar: "ladiesbag.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "ladies sling bag",
                deskripsi:
                    "produk ini merupakan salah satu barang terlaris, jadi cepat dapatkan.",
                harga: 300000,
                gambar: "ladiesbag.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "brown big wallet",
                  deskripsi:
                      "dompet dengan fashion yang cocok untuk anak muda sekarang.",
                  harga: 170000,
                  gambar: "brownwallet1.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "brown big wallet",
                deskripsi:
                    "dengan harga yang terjangkau,dan dapatkan segera sebelum stok habis.",
                harga: 170000,
                gambar: "brownwallet1.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "brown small wallet",
                  deskripsi: "dompet dengan ukuran yang pas di kantong",
                  harga: 90000,
                  gambar: "brownwallet2.jpg",
                  star: 3,
                ),
              ));
            },
            child: ProductBox(
                nama: "brown small wallet",
                deskripsi:
                    "dompet dengan ukuran yang pas dibawa kemana-kemana karena muat di kantong celana",
                harga: 90000,
                gambar: "brownwallet2.jpg",
                star: 3),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 130,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: " + this.harga.toString(),
                      style: TextStyle(color: Colors.yellowAccent.shade700),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
