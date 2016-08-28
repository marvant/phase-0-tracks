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

