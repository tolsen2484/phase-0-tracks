
// pseudocode
// create new function that reverses string
//   for each letter, starting with the string length minus 1, store it in an empty
//     variable 
//   minus 1 until reaching first letter
//   return the variable.


function reverse(str) {
var rev = "";
for (var i = (str.length - 1); i >= 0; i--)
	rev = rev + (str[i]);
return rev
}

// drivercode
console.log(reverse("Loop over me!"));

var revWord = (reverse("redrum"));

if (revWord == "murder") {
 	console.log("You're the MURDERER!");
}