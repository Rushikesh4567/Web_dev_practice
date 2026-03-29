//1. 
let a = 10, b = 3;

console.log(a + b);
console.log(a % b);
console.log(a ** b);

//2.
let x = 5;
x++;
console.log("Value of x after post increment: ",x);

++x;
console.log("Value of x after pre increment: ",x);

//3. Check that a number is even or odd.
let n = 34;

if(n%2==0)
{
    console.log("Number is even.");
}
else{
    console.log("Number is odd.");
}

//4.
let m = 23;
if(m>n)
{
    console.log(m," is greater than ",n);
}
else{
    console.log(n," is greater than ",m);
}

//5.
let z = 5;
let y = "5";

if(z == y)
{
  console.log("Numbers are equal.");
}
else
{
    console.log("Numbers are not equal");
}

if(z === y)
{
  console.log("Numbers are equal.");
}
else
{
    console.log("Numbers are not equal");
}