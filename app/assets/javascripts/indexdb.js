var fishsquare = {};

fishsquare.indexedDB.db = null;

fishsquare.indexedDB.open = function() {
	var version = 3;
	var request = indexedDB.open("fishsquare", version);

	request.onupgradeneeded = function(e) {
		var db = e.target.result;

		e.target.transaction.onerror = fishsquare.indexedDB.onerror;

		if (db.objectStoreNames.contains("test")) {
			db.deleteObjectStore("test");
		}

		var store = db.createObjectStore("test", {keyPath: "id", autoIncrement: true});

	}

	request.onsuccess = function(e) {
		fishsquare.indexedDB.db = e.target.result;
		fishsquare.indexedDB.getFish();
	}

	request.onerror = fishsquare.indexedDB.onerror;

}

fishsquare.indexedDB.addCheckin = function(text) {
	var db = fishsquare.indexedDB.db;
	var trans = db.transaction(["test"], "readwrite");
	var store = trans.objectStore("test");
	var request = store.put({
		"notes": text

	});

	request.onsuccess = function(e) {
		fishsquare.indexedDB.getFish();
	};

	request.onerror = function(e) {
		console.log(e.value);
	}
}

console.log("HELLO");

// Type of objects to store

