//Advanced level js functions questions

//1. Use reduce to find sum of array.
let arr = [2,3,4,5,6];
let sum = arr.reduce((acc,curr)=>{
    return acc + curr;
},0);
console.log(sum);

//2. Use reduce to find product of array.
let product = arr.reduce((acc,curr)=>{
    return acc * curr;
},0);
console.log(product);

//3. Find maximum number using reduce.
let max = arr.reduce((acc,curr)=>{
    return acc > curr ? acc : curr;
},0);
console.log(max);

//4. Create array from 1 to n and find sum using reduce.
let n = 5;

// create array [1,2,3,4,5]
let arr1 = Array.from({ length: n }, (_, i) => i + 1);

// sum using reduce
let sum1 = arr1.reduce((acc, curr) => acc + curr, 0);

console.log(sum1); 


//5. Chain methods:

/*
    [1,2,3,4,5]
        → double
        → filter even
        → sum
*/

let result = [1, 2, 3, 4, 5]
    .map(val => val * 2)        // [2,4,6,8,10]
    .filter(val => val % 2 === 0) // [2,4,6,8,10]
    .reduce((acc, curr) => acc + curr, 0); // sum

console.log(result); 