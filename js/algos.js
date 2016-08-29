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

// function to generate random words and return them in an array
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
// writing a function to generate random words

// defining an empty variable to store the words
	var words = [];
//define a function that take in an intiger and generates words equal to the given number and returns them in an array
function generator(number){
	console.log("Generating words");

	// define an alphabet varialbe and turn it into an array
	var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
	
	// // defining an empty variable to store the words
	// var words = [];
	
	// loop to generate as many wods as specified in paramerter
	for (i=0; i < number; i++){
		// define a variable to add to it random letters generated to make a word
		var word = "";
		
		// set the lenght of each word with a random number from 1 to 10
		var word_length = (Math.floor((Math.random() * 10) + 1));
		
		// a loop to generate each letter of the word
		for (j=0; j < word_length; j++){
			// add each letter generated to the variable word
			word = word + (alphabet[getRandomInt(0, 25)]);
			
		}
		// print each word created
		console.log(word);
		// add each word created to the words array
		words.push(word);
	}
	// print the array with all the words created
	console.log(words);
	return words;
}

// driver code
// generator(10);
// LongestPhrase(words);

// driver code that loops 10 times
for (i=1; i < 11; i++){
	generator(i);
	LongestPhrase(words);
}









