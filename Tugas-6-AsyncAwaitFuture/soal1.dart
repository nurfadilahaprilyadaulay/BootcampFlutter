class Human {
  String name = "Nama Character One Piece";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 1)); // Jeda 3 detik
    name = "Rafi";
    print("get data [done]");
  }
}

void main(List<String> args) async {
  var h = Human();

  print("Luffy");
  print("Zorro");
  print("Killer");
  print(h.name); // Mencetak nama awal "Nama Character One Piece"
 
   await h.getName(); // Menunggu proses asynchronous getName selesai
  print("${h.name}"); // Mencetak nama setelah diubah oleh getName
}
