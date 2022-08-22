class Products {
  final String id;
  final String title;
  final int price;
  final String imgUrl;
  final int? discountValue;
  final String category;
  final double? rate;

  Products({
    required this.id,
    required this.title,
    required this.price,
    required this.imgUrl,
    this.discountValue,
    this.category = 'Other',
    this.rate,
  });
}

List<Products> dummyProducts = [
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl:
        "https://www.bing.com/images/search?view=detailV2&ccid=A3D6EinV&id=6FD1B0E1A0E83FCD1C591683240AD33349A46947&thid=OIP.A3D6EinVW5RKxMuxhZyevQAAAA&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0370fa1229d55b944ac4cbb1859c9ebd%3frik%3dR2mkSTPTCiSDFg%26riu%3dhttp%253a%252f%252fs3.r29static.com%252fbin%252fentry%252f3a2%252f0%252c0%252c460%252c552%252f830x996%252c80%252f1437683%252fimage.jpg%26ehk%3daW%252bPPYzy5CJp2FQfLT9ET5ldEkio0uxsUMBufC7TyGs%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=552&expw=460&q=Thrift+Store+Fashion+Style&simid=608037884886808781&FORM=IRPRST&ck=CAF31AD3800FA783F174BE2C6F469BC6&selectedIndex=68&ajaxhist=0&ajaxserp=0",
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '2',
    title: 'T-shirt',
    price: 500,
    imgUrl:
        "https://www.bing.com/images/search?view=detailV2&ccid=A3D6EinV&id=6FD1B0E1A0E83FCD1C591683240AD33349A46947&thid=OIP.A3D6EinVW5RKxMuxhZyevQAAAA&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0370fa1229d55b944ac4cbb1859c9ebd%3frik%3dR2mkSTPTCiSDFg%26riu%3dhttp%253a%252f%252fs3.r29static.com%252fbin%252fentry%252f3a2%252f0%252c0%252c460%252c552%252f830x996%252c80%252f1437683%252fimage.jpg%26ehk%3daW%252bPPYzy5CJp2FQfLT9ET5ldEkio0uxsUMBufC7TyGs%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=552&expw=460&q=Thrift+Store+Fashion+Style&simid=608037884886808781&FORM=IRPRST&ck=CAF31AD3800FA783F174BE2C6F469BC6&selectedIndex=68&ajaxhist=0&ajaxserp=0",
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '3',
    title: 'T-shirt',
    price: 600,
    imgUrl:
        "https://www.bing.com/images/search?view=detailV2&ccid=A3D6EinV&id=6FD1B0E1A0E83FCD1C591683240AD33349A46947&thid=OIP.A3D6EinVW5RKxMuxhZyevQAAAA&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0370fa1229d55b944ac4cbb1859c9ebd%3frik%3dR2mkSTPTCiSDFg%26riu%3dhttp%253a%252f%252fs3.r29static.com%252fbin%252fentry%252f3a2%252f0%252c0%252c460%252c552%252f830x996%252c80%252f1437683%252fimage.jpg%26ehk%3daW%252bPPYzy5CJp2FQfLT9ET5ldEkio0uxsUMBufC7TyGs%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=552&expw=460&q=Thrift+Store+Fashion+Style&simid=608037884886808781&FORM=IRPRST&ck=CAF31AD3800FA783F174BE2C6F469BC6&selectedIndex=68&ajaxhist=0&ajaxserp=0",
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl:
        "https://www.bing.com/images/search?view=detailV2&ccid=A3D6EinV&id=6FD1B0E1A0E83FCD1C591683240AD33349A46947&thid=OIP.A3D6EinVW5RKxMuxhZyevQAAAA&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0370fa1229d55b944ac4cbb1859c9ebd%3frik%3dR2mkSTPTCiSDFg%26riu%3dhttp%253a%252f%252fs3.r29static.com%252fbin%252fentry%252f3a2%252f0%252c0%252c460%252c552%252f830x996%252c80%252f1437683%252fimage.jpg%26ehk%3daW%252bPPYzy5CJp2FQfLT9ET5ldEkio0uxsUMBufC7TyGs%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=552&expw=460&q=Thrift+Store+Fashion+Style&simid=608037884886808781&FORM=IRPRST&ck=CAF31AD3800FA783F174BE2C6F469BC6&selectedIndex=68&ajaxhist=0&ajaxserp=0",
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl:
        "https://www.bing.com/images/search?view=detailV2&ccid=A3D6EinV&id=6FD1B0E1A0E83FCD1C591683240AD33349A46947&thid=OIP.A3D6EinVW5RKxMuxhZyevQAAAA&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0370fa1229d55b944ac4cbb1859c9ebd%3frik%3dR2mkSTPTCiSDFg%26riu%3dhttp%253a%252f%252fs3.r29static.com%252fbin%252fentry%252f3a2%252f0%252c0%252c460%252c552%252f830x996%252c80%252f1437683%252fimage.jpg%26ehk%3daW%252bPPYzy5CJp2FQfLT9ET5ldEkio0uxsUMBufC7TyGs%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=552&expw=460&q=Thrift+Store+Fashion+Style&simid=608037884886808781&FORM=IRPRST&ck=CAF31AD3800FA783F174BE2C6F469BC6&selectedIndex=68&ajaxhist=0&ajaxserp=0",
    category: 'Clothes',
    discountValue: 20,
  ),
  Products(
    id: '1',
    title: 'T-shirt',
    price: 300,
    imgUrl:
        "https://www.bing.com/images/search?view=detailV2&ccid=A3D6EinV&id=6FD1B0E1A0E83FCD1C591683240AD33349A46947&thid=OIP.A3D6EinVW5RKxMuxhZyevQAAAA&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0370fa1229d55b944ac4cbb1859c9ebd%3frik%3dR2mkSTPTCiSDFg%26riu%3dhttp%253a%252f%252fs3.r29static.com%252fbin%252fentry%252f3a2%252f0%252c0%252c460%252c552%252f830x996%252c80%252f1437683%252fimage.jpg%26ehk%3daW%252bPPYzy5CJp2FQfLT9ET5ldEkio0uxsUMBufC7TyGs%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=552&expw=460&q=Thrift+Store+Fashion+Style&simid=608037884886808781&FORM=IRPRST&ck=CAF31AD3800FA783F174BE2C6F469BC6&selectedIndex=68&ajaxhist=0&ajaxserp=0",
    category: 'Clothes',
    discountValue: 20,
  ),
];
