fast_food = {
	burgers: {
		burger_king: {
			cheeseburgers: 3,
			fries: 1.5,
			sodas: 1.5,
			shakes: 4,
		},
		wendys: {
			cheeseburgers: 4,
			fries: 2,
			sodas: 2,
			shakes: 4,
		}
	},
	
	chicken: {
		kfc: {
			one_piece: 2,
			bucket: 20,
			sandwich: 4,
		},
		
		popeyes: {
			one_piece: 3,
			bucket: 15,
			sandwich: 4,
		}
		
	},
	
	
	pizza:   {
		dominoes: {
			slice: 2,
			whole: 10,
		},
		
		papa_johns: {
			slice: 3,
			whole: 16,
		}
		
	},
	
	healthy: [
		"pei_wei",
		"paradise_bakery",
		],
}

p fast_food[:burgers][:wendys][:shakes]
p fast_food[:healthy][0]
p fast_food[:healthy].push("subway")