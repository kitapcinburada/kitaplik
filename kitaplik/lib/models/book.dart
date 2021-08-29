//Book Model
class Book {
  final int bookID, bookReleaseYear, bookPage;
  final double bookRating;
  final String bookName,
      bookPublisher,
      bookAuthor,
      bookLanguage,
      bookMyNote,
      bookAbout;

  Book({
    this.bookID,
    this.bookReleaseYear,
    this.bookPage,
    this.bookRating,
    this.bookName,
    this.bookPublisher,
    this.bookAuthor,
    this.bookLanguage,
    this.bookMyNote,
    this.bookAbout,
  });

  //demo book data
  List<Book> bookList = [
    Book(
      bookID: 1,
      bookName: "Sahne Senin",
      bookAuthor: "Dr. Kemal Tekden",
      bookPublisher: "Tüzdev Yayınları",
      bookPage: 226,
      bookReleaseYear: 2020,
      bookLanguage: "Türkçe",
      bookRating: 4.2,
      bookAbout:
          "Dünya hayatı bir sahnedir aslında, herkesin kendine biçilen rolü oynadığı bir sahne. Girişimci de bu sahnede en güzel oyununu oynamak zorundadır. Yaşamaktan maksat da, perde bizim için kapanana dek rolümüzü en iyi şekilde oynayıp iz bırakmak değil midir? Bu yüzden bu kitabı da kendi rolümün bir parçası olarak görüyorum. Bu kitabı da kendi rolümün bir parçası olarak görüyorum. Bu kitabın sayfaları içinde, acizane yol göstermek gayretinde olduğum girişimcilere sesleniyorum: 'Haydi,simdi sahne senin!'",
      bookMyNote: "Bir girişimci için başucu olabilecek bir kitaptır.",
    ),
    Book(
      bookID: 2,
      bookName: "Süpermen Türk Olsaydı Pelerinini Annesi Bağlardı",
      bookAuthor: "Ahmet Şerif İzgören",
      bookPublisher: "Elma Yayınevi",
      bookPage: 184,
      bookReleaseYear: 2017,
      bookLanguage: "Türkçe",
      bookRating: 4.9,
      bookAbout: "Okurken pelerininizi kendiniz bağlayabildiğiniz sürece gerçek bir süpermen olabileceğinizi göreceksiniz. Ayaklarınızın yere bastığından emin olun. Gerçekten uçabilirsiniz",
      bookMyNote: "Şerif Hoca'dan yine mükemmel ötesi bir kitap",
    )
  ];
}
