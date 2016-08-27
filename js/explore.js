// define a variable called ReversedWord and set it equal to an empty string.
var ReversedWord = "";

// define a function called reverse 
// reverse will take a stirng as a parameter and reverses it and stores in in ReversedWord variable
function reverse(word) {
	// for loop that stars from the end of the string
	// it will take each letter, starting from the end, and add it to the ReversedWord
	for (i=word.length-1; i>=0; i--){
		ReversedWord = ReversedWord + word[i];
	}
	// print ReverseWord variable
	console.log(ReversedWord)
}


// driver code to test the reverse function
reverse("abc")

// driver code with if statement 
if (ReversedWord.length == 0) {
	reverse("new word");
}
	else {
		ReversedWord = "";
		reverse("other word");
	}
