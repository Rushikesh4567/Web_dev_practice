//1.
const product = {
  name: "Laptop",
  price: 50000,
  discount: 10,
  finalPrice: 0
};

// calculate final price
product.finalPrice = product.price - (product.price * product.discount / 100);

console.log(product);

//2.
const profile = {
  username: "rushikesh_123",
  followers: 1200,
  following: 300,
  isVerified: false
};

console.log(profile);

//3.
let a = 10;
let b = 5;

console.log("Their sum is: ",a+b);
console.log("Their difference is: ",a-b);
console.log("Their product is: ",a*b);

//4.
let m = 10;             // Number
let n = "Hello";        // String
let c = true;           // Boolean
let d;                  // Undefined
let e = null;           // Null

console.log(typeof m); // number
console.log(typeof n); // string
console.log(typeof c); // boolean
console.log(typeof d); // undefined
console.log(typeof e); // object (JS bug)

//5.
const car = {
  brand: "BMW",
  price: 8000000,
  isAvailable: true
};

// add new property
car.color = "black";

// update price
car.price = 7500000;

console.log(car);

