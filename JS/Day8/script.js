//1.
let n = 7;

let sum = (n*(n+1))/2;
console.log("Sum of 1 to 7: ",sum);

//2.
let str = "Hello";
let reversed = "";

for (let char of str) {
    reversed = char + reversed;
}

console.log("Reversed string is: ",reversed);

//3.

let str2 = "javascript";
let count = 0;

for (let char of str2.toLowerCase()) {
    if (
        char === "a" ||
        char === "e" ||
        char === "i" ||
        char === "o" ||
        char === "u"
    ) {
        count++;
    }
}

console.log("Vowels =", count);

//4.
let num = 5;

for (let i = 1; i <= 10; i++) {
    console.log(num + " x " + i + " = " + (num * i));
}

//5.
let str1 = "Raj magdum";
let name = str1.replaceAll(" ","");
let username = "@" +str1.toLocaleLowerCase() + str1.length ;
console.log(username);