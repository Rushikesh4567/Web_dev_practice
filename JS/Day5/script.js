//1. 
let n = 0;
if(n>0)
{
    console.log("This is positive number.");
}
else
{
    if(n<0)
    {
        console.log("This is Negative number.");
    }
    else
    {
        console.log("This is Zero.");
    }

}

//2.
if(n%3==0 && n%5==0)
{
    console.log("This is divisible by 3 and 5.");
}
else{
    console.log("This is not divisible by 3 and 5.");
}

//3.
let a = 9;
let b = 16;
let c = 17;

if(a>b)
{
    if(a>c)
    {
        console.log("a is greater .");
    }
    else{
        console.log("c is greater");
    }

}
else{
    if(b>c)
    {
        console.log("b is greater.");
    }
    else{
        console.log("c is greater.");
    }
}

//4.
let marks = 50;

let result = marks>=40? "Pass" : "Fail";
console.log("Result is: ",result);

//5. solved in html code