// Release 0: Find the Longest Word
// write a function that takes an array of words or phrases and 
//   returns the longest word in the array

// pseudocode
// For every word in the array, run a .length test
// if word is longer than the previous word, then set that as new longest under var
// after complete, return longest word


function longestWord(arr) {
var longest = "";
for (var i = 0; i < arr.length; i++) {

	if (longest.length < arr[i].length)
		longest = arr[i]; 
}
		
return longest;
}



// driver code
// console.log(longestWord(["blah", "helllllo", "ok", "biggggggwordddd"]));
// console.log(longestWord(["red","blue","green","pink","orange","navy"]));
// console.log(longestWord(["one","two","three","four","five","six","seven"]));


// compare 1st and 2nd object, use for..in option to run through each key and value
// pair, if ===, then return true, else return false

function share_key(object1, object2) {
  for (var key in object1) {
    if (object1[key] === object2[key]) {
      return true;    
    }
  }
  return false;
}


// set var alphabet with all the letters, loop through n times and push the random word to an empty array,
// set up an empty string to accept another loop that goes through a min of 1 and max of 10 times
// and pushes that amount of letters that indexes from the alphabet var, return n amount of words
function random_words(n) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var words = [];
	
	for(var i = 0; i < n; i++) {
		var word = "";
		for (var j = 0; j < Math.floor(Math.random() * (10 - 1)) + 2; j++) {
			word += alphabet[Math.floor(Math.random() * 26)];
		}
		words.push(word);
	}
	return words;
}


//loop through x amount of times, use previous function of randomWords to generate an array of roughly 3 to 10 words, 
// print the array and run the longestWord function on the random array
function array_generator(num_of_arrays) {
	
	for (var i = 0; i < num_of_arrays; i++) {
		blah = random_words(Math.floor(Math.random() * (10-3) + 3));
		console.log(blah);
		console.log(longestWord(blah));
	}
}


//driver code
console.log(share_key( {name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(share_key( {name: "luo", age: 50}, {name: "luof", age: 30}));
console.log(random_words(3));
console.log(array_generator(10));