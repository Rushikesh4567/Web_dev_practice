// Easy level function questions in js

//1. Create a function to print "Hello World".

function myfunction()
{
    console.log("Hello world!");
}

myfunction();

//2. Create a function that returns square of a number.

function square_no(a)
{
    return a * a;
}

console.log("square of number is ",square_no(5));

//3. function which will return that no. is even or odd

function check_evenodd(num){
    if(num%2==0)
    {
        console.log("even");
    }
    else
    {
        console.log("odd");
    }
}

check_evenodd(55);

//4. Count vowels in a string (Normal Function) 

function countVowels(str) {
    let count = 0;

    for (let char of str) {
        if (
            char === 'a' || char === 'e' || char === 'i' ||
            char === 'o' || char === 'u' ||
            char === 'A' || char === 'E' || char === 'I' ||
            char === 'O' || char === 'U'
        ) {
            count++;
        }
    }

    return count;
}


console.log(countVowels("Hello World")); 

//5.  Same above question using arrow function

const countVowels1 = (str) => {
    let count = 0;

    for (let char of str) {
        if (
            "aeiouAEIOU".includes(char)
        ) {
            count++;
        }
    }

    return count;
};

console.log(countVowels1("Hello world"));



