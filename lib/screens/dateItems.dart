class Store {
  String itemName;
  Store.items({
    this.itemName,
  });
}

List<Store> storeItems = [
  Store.items(
    itemName: "May 4",
  ),
  Store.items(
    itemName: "Dec 25",
  ),
  Store.items(
    itemName: "Movie and dinner",
  ),
  Store.items(
    itemName: "Sunset walk on the beach",
  ),
];
