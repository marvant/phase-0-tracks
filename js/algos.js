// define a function that takes in an array of words ro phrases as its parameter
// create a variable(phrase) to store the longest word or phase in it
// check the first item in the array and return its length
// if the item's length is larger than the word in phrase variable replace the logestphrase value with this item
// repeat line three for each item in the array
// print out the resutl,phrase

function LongestPhrase (array) {
	var phrase = ""
	for (i=0; i<array.length; i++){
		if (array[i].length > phrase.length){;
			phrase = array[i];
		}

	}
	console.log("The longest word/phrase in your array is:", phrase);
}

LongestPhrase(["long phrase", "longest phrase", "longer phrase"]);

//create an object
// function PersonalInfo(name, age){
// 	this.name = name;
// 	this.age = age;
// }

// obj1 = {name: "Steven", age: 54}
// obj2 = {name: "Tamir", age: 55}
// console.log(Object.keys(obj1).length);
// var keys = Object.keys(obj1);
// console.log(keys);
// console.log(obj2[keys[1]]);


// create a function that takes two objects
function compare(obj1, obj2){
	// get the keys for one of the objects
	// only need the keys for one object. program will run faster if we use keys for the smaller object
	// but for this program we just use the keys from the first object
	var keys = Object.keys(obj1);
	// define a result variable ans set its value to false. once a match is found it will be changed to true in if statement
	var result = false
	// for loop to go through each key and value pair using the keys
	for (i=0; i < keys.length; i++){
		// if statement to compare key value pair and return true if finds any match
		if (obj1[keys[i]] == obj2[keys[i]]){
			result = true;
		} 
	}
	console.log(result);
}
compare({name: "Steven", age: 54}, {name: "Tamir", age: 54, eyecolor: "brown"});
compare({make: "VW", model: "GTI", year: 2012}, {"make": "VW", model: "Jetta", year: 2005});
compare({make: "VW", model: "GTI", year: 2012}, {"make": "Benz", model: "GLK", year: 2016});

