// Intermediate level questions of functions in js

//1. Use forEach to print all elements of an array.
let arr = [1,22,12,14,56];
arr.forEach((val)=>{
    console.log(val)
});

//2. Use forEach to print square of each number.
console.log("Squares of these numbers are: ");
arr.forEach((val)=>{
    console.log(val*val);
});

//3. Use map to double all numbers.
console.log("Double values of array methods");
let newArr = arr.map((val)=>{
    console.log(val *2);
});

//4. Convert array of strings to uppercase using map.
let arr1 = ["Tahir","Rushikesh","Digvijay","Shree"];
let myarr = arr1.map((val)=>{
    console.log(val.toLowerCase());
});

//5. Use filter to get all odd numbers.
let oddno = arr.filter((val)=>{
    if(val%2!==0)
    {
        console.log(val);
    }
});

//6. Filter numbers greater than 50 from an array.
let greaterno = arr.filter((val)=>{
    if(val>50)
    {
        console.log(val);
    }

});

//7. From marks array, get students scoring 90+.
let marks = [45,56,67,78,89,90,99,93,98,96];

let greatermarks = marks.filter((val)=>{
    if(val>90)
    {
        console.log(val);
    }

});