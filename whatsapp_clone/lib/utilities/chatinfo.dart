
class Chatinfo {
  int id;
  String image;
  String name;
  String lastchat;
  String time;

  Chatinfo(
      {required this.id,
      required this.image,
      required this.name,
      required this.lastchat,
      required this.time});
}

List<Chatinfo> chatList = [
  Chatinfo(
      id: 0,
      image:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: 'John Doe',
      lastchat: 'Hello How are you?',
      time: '02:34 PM'),
  Chatinfo(
      id: 1,
      image:
          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: 'jane Doe',
      lastchat: 'Hello! How are you?',
      time: '02:34 PM'),
  Chatinfo(
      id: 2,
      image:
          "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: "jay don",
      lastchat: "done",
      time: "02:56 PM"),
  Chatinfo(
      id: 3,
      image:
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: "lisa doe",
      lastchat: "to much",
      time: "02:56 PM"),
  Chatinfo(
      id: 4,
      image:
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: "Ronik",
      lastchat: "sdjksdkvsdv",
      time: "02:56 PM"),
  Chatinfo(
      id: 4,
      image:
          "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: "Nitin",
      lastchat: "hsadbhbsdb",
      time: "04:56 PM"),
];
