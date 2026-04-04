//Solved Easy level Array questions.

//1.create an array of 5 elements and print them using for loop.
console.log("Print all elements of array.");
let arr1 = [1,22,33,12,56];
for(let a of arr1)
{
    console.log(a);
}

console.log();

//2. print first and last element of an array.
console.log("Print first and last element of array: ");
console.log("First:",arr1[0],",last:",arr1[arr1.length-1]);

//3. Find length of array.
console.log("length of array: ",arr1.length);

//4. Add an element at the end using push()

arr1.push(23);
console.log(arr1);

//5. Remove last element using pop()
arr1.pop();
console.log(arr1);