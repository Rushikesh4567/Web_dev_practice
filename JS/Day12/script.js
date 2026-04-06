//Intermediate  level js array questions.
//1. 10% reduce price on each product.
//it means previously if its price was 100% then after dropping to 10%, its actual price becomes = 90% (so multiply by 0.9)
let arr = [100,200,300,400,500];

for(let i = 0;i<arr.length;i++)
{
    arr[i] = arr[i] * 0.9;
}

console.log("After reducing it to 90%, array becomes: ",arr);

//2. Concat two arrays
let arr1 = [1,2,33,12,6];
let arr2 = [33,23,25,67,7];

let merged = arr1.concat(arr2);
console.log("Merged array is: ",merged);

//3. Remove duplicates from an array

let arr3 = [1,2,3,1,2,4,5];
let unique = [];

for(let val of arr3)
{
    if(!unique.includes(val))
    {
        unique.push(val);
    }
}
console.log(unique);

//4. Second largest element in an array.
let a = [10, 5, 8, 20, 15];

let max = -Infinity;
let secondMax = -Infinity;

for (let num of a) {
    if (num > max) {
        secondMax = max;
        max = num;
    } else if (num > secondMax && num !== max) {
        secondMax = num;
    }
}

console.log(secondMax);

//5. Replace an element using splice()
let companies = ["Bloomberg", "Microsoft", "Uber", "Google"];

let index = companies.indexOf("Uber");

if (index !== -1) {
    companies.splice(index, 1, "Ola");
}

console.log(companies);