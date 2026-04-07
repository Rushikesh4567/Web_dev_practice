// Hard level array questions in js

//1. Rotate Array (Left Rotation)

let arr = [11,22,33,44];
let first = arr.shift();
arr.push(first);

console.log(arr);

//2. Check if Array is Palindrome
let isPalindrome = true;

for(let i = 0;i<arr.length/2;i++)
{
    if(arr[i]!==arr[arr.length-1-i])
    {
        isPalindrome = false;
        break;
    }
}

console.log("This array is palindrome or not(true/false): ",isPalindrome);

//3. check frequency of each element in an array
let arr1 = [1,2,2,3,1,1];

let freq = {};
for(let num of arr1)
{
    if(freq[num])
    {
        freq[num]++;
    }
    else
    {
        freq[num] = 1;
    }
}

console.log(freq);

//4.flattening an array
let arr2 = [1, [2, 3], [4, 5]];
let flat = [];

for (let item of arr2) {
    if (Array.isArray(item)) {
        for (let val of item) {
            flat.push(val);
        }
    } else {
        flat.push(item);
    }
}

console.log(flat);

//5. Manual push array elements
function mypush(array, value)
{
    array[array.length] = value;
}

mypush(arr,4);
console.log(arr);