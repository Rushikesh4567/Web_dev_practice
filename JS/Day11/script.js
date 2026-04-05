//Medium level Array questions.

//1. Find sum of all elements
let sum = 0;
console.log("Print sum of all elements array.");
let arr1 = [1,22,33,12,56];
for(let a of arr1)
{
     sum = sum + a;
}

console.log("Sum is ",sum);

//2. Find average of numbers
let avg = 0;
//find sum using for loop and then find average.
console.log("average is: ",(sum/arr1.length));

//3. Count even numbers in array
for(let i of arr1)
{
    if(i%2==0)
    {
        console.log(i);
    }
}
console.log();
//4. Reverse array (without using reverse())
for(let i = arr1.length-1; i>=0 ; i--)
{
     console.log(arr1[i]);
}

console.log();
//5. Find maximum number in array.

let largest = arr1[0];
for(let x = 0;x<arr1.length ; x++)
{
    if(arr1[x] >= largest)
    {
        largest = arr1[x];
    }
}
console.log("Largest no. ",largest);
