
class Note {

	int _id;
  String _title;
	String _description;
  String _telpon;
  String _tanggallahir;
  String _alamat;
  String _email;
	String _date;
	int _priority;

	Note(this._title,this._date, this._priority, [this._description, this._telpon, this._tanggallahir, this._alamat, this._email]);

	Note.withId(this._id,this._title, this._date, this._priority, [this._description, this._telpon, this._tanggallahir, this._alamat, this._email]);

	int get id => _id;

	String get title => _title;

  String get description => _description;

  String get telpon => _telpon;

  String get tanggallahir => _tanggallahir;

  String get alamat => _alamat;

  String get email => _email;

	int get priority => _priority;

	String get date => _date;

	set title(String newTitle) {
		if (newTitle.length <= 255) {
			this._title = newTitle;
		}
	}

	set description(String newDescription) {
		if (newDescription.length <= 255) {
			this._description = newDescription;
		}
	}

set telpon(String newTelpon) {
		if (newTelpon.length <= 255) {
			this._telpon = newTelpon;
		}
	}
  set tanggallahir(String newTanggallahir) {
		if (newTanggallahir.length <= 255) {
			this._tanggallahir= newTanggallahir;
		}
	}
  set alamat(String newAlamat) {
		if (newAlamat.length <= 255) {
			this._alamat = newAlamat;
		}
	}

  set email(String newEmail) {
		if (newEmail.length <= 255) {
			this._email = newEmail;
		}
	}
  

	set priority(int newPriority) {
		if (newPriority >= 1 && newPriority <= 2) {
			this._priority = newPriority;
		}
	}

	set date(String newDate) {
		this._date = newDate;
	}

	// Convert a Note object into a Map object
	Map<String, dynamic> toMap() {

		var map = Map<String, dynamic>();
		if (id != null) {
		map['id'] = _id;
		}
		map['title'] = _title;
		map['description'] = _description;
    map['telpon'] = _telpon;
    map['tanggallahir'] = _tanggallahir;
    map['alamat'] = _alamat;
    map['email'] = _email;
    map['priority'] = _priority;
		map['date'] = _date;

		return map;
	}

	// Extract a Note object from a Map object
	Note.fromMapObject(Map<String, dynamic> map) {
		this._id = map['id'];
		this._title = map['title'];
		this._description = map['description'];
    this._telpon = map['telpon'];
    this._tanggallahir = map['tanggallahir'];
    this._alamat = map['alamat'];
    this._email = map['email'];
		this._priority = map['priority'];
		this._date = map['date'];
	}
}