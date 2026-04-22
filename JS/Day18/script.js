//Expert level questions on js function

//1. Count frequency using reduce
let arr = ["a", "b", "a", "c", "b", "a"];

let freq = arr.reduce((acc, curr) => {
    acc[curr] = (acc[curr] || 0) + 1;
    return acc;
}, {});

console.log(freq);
// { a: 3, b: 2, c: 1 }

//2. Flatten array using reduce
let arr1 = [[1,2], [3,4], [5]];

let flat = arr1.reduce((acc, curr) => {
    return acc.concat(curr);
}, []);

console.log(flat); // [1,2,3,4,5]

//3. Create your own map function
function myMap(arr, callback) {
    let result = [];

    for (let i = 0; i < arr.length; i++) {
        result.push(callback(arr[i]));
    }

    return result;
}

// usage
let output = myMap([1,2,3], x => x * 2);
console.log(output); // [2,4,6]

//4. Remove duplicates using filter
let arr2 = [1, 2, 2, 3, 4, 4];

let unique = arr2.filter((val, index) => {
    return arr2.indexOf(val) === index;
});

console.log(unique); // [1,2,3,4]

//5. find second largest number
let arr3 = [10, 20, 5, 30, 25];

let unique1 = [...new Set(arr3)];

unique1.sort((a, b) => b - a);

console.log(unique1[1]); // 25



