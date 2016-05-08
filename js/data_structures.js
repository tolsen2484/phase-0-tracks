//Pairing: Tolsen Wilmot, Kenneth Olson

//Release 1

var colors = ["blue", "red", "green", "yellow"];
var names = ["ed", "fred", "bob", "zed"];

colors.push("white");
names.push("mike");

var horses = {}

for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses)


// Release 2



function Car(name, doors, color) {
	
	console.log("Our new car:", this);

	this.name = name;
	this.doors = doors;
	this.color = color;
	
	this.compliment = function() { console.log("Wow! What a beautiful car!"); };
	this.upgrade = function() { console.log("You added an upgrade.. $$$") };

	console.log("CAR INITIALIZATION COMPLETE");
}


console.log("We have new cars for sale: ");
var car1 = new Car("honda", 4, "blue");
console.log(car1);
car1.compliment();
console.log("-----------");

console.log("Here's another car: ");
var car2 = new Car("ford", 2, "red");
console.log(car2);
car2.compliment();
console.log("-----------");

console.log("Did you decide yet?");
car2.compliment();
console.log("Nice choice!");
car2.upgrade();
car2.upgrade();
car2.upgrade();
car2.upgrade();
console.log("-----------");


