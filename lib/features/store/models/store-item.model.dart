class StoreItemModel {
  final String name;
  final double price;
  final double popularity; //percentage
  final double suspicion; //percentage
  final String image; //idk if that's a string properly
  final String id;

  StoreItemModel({
    required this.name,
    required this.price,
    required this.image,
    required this.popularity,
    required this.suspicion,
    required this.id,
  });
}
