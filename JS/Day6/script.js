//1.
let marks = 54;
if(marks>=80 && marks<=100)
{
    console.log("A Grade");
}
else
{
    if(marks>=70 && marks<=79)
    {
        console.log("B Grade");
    }
    else
    {
        if(marks>=60 && marks<=69)
        {
            console.log("C Grade");
        }
        else
        {
            if(marks>=50 && marks<=59)
            {
                console.log("D Grade");
            }
            else{
                console.log("Fail..");
            }
        }
    }
}
//2.
let a = 10;
let b = 5;

alert("Here are two numbers 10 and 5.\nChoose operation:\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division");

let c = Number(prompt("Enter your choice: "));
let r = 0;

switch (c) {
    case 1:
        r = a + b;
        alert("Addition is: " + r);
        break;

    case 2:
        r = a - b;
        alert("Subtraction is: " + r);
        break;

    case 3:
        r = a * b;
        alert("Multiplication is: " + r);
        break;

    case 4:
        r = a / b;
        alert("Division is: " + r);
        break;

    default:
        alert("Invalid choice!");
}
//3. 
let n = 40;
if(n%2==0)
{
    if(n%4==0)
    {
        console.log("This no. is even and divisible by 4");
    }
    else
    {
        console.log("This no. is odd but divisible by 4");
    }
}
else{
    console.log("This is odd number.");
}
//4.
if(n>=10 && n<=50)
{
    if( n%7==0)
    {
        console.log("This no. is between 10 and 50 and divisible by 7");
    }
    else{
        console.log("This no. is between 10 and 50 but not divisible by 7");
    }
    
}
else{
    console.log("This no. is not in  between 10 and 50");
}


//5.
let age = Number(prompt("Enter the age of person: "));

let result = age >= 18 ? "Adult" : "Minor";

alert(result);