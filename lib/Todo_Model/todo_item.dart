class Todo {
  int _id;
  String _itemname;
  String _itemdescription;

  Todo(this._itemname, [this._itemdescription]);

  Todo.withId(this._id, this._itemname, [this._itemdescription]);

  int get id => _id;

  String get itemname => _itemname;

  String get itemdescription => _itemdescription;

  set itemname(String newTitle) {
    if (newTitle.length <= 255) {
      this._itemname = newTitle;
    }
  }

  set itemdescription(String newDescription) {
    if (newDescription.length <= 255) {
      this._itemdescription = newDescription;
    }
  }

  set date(String newDate) {}

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['itemname'] = _itemname;
    map['itemdescription'] = _itemdescription;

    return map;
  }

  // Extract a Note object from a Map object
  Todo.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._itemname = map['itemname'];
    this._itemdescription = map['itemdescription'];
  }
}
