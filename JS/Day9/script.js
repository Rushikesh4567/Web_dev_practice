//1.
let gameNum = 25;
let userNum;

while (userNum !== gameNum) {
    userNum = Number(prompt("Guess the number:"));

    if (userNum === gameNum) {
        alert("🎉 Correct Guess!");
    } else if (userNum > gameNum) {
        alert("Too high! Try again.");
    } else {
        alert("Too low! Try again.");
    }
}

//2.
let str1 = "madam";
let reversed = "";

for (let char of str1) {
    reversed = char + reversed;
}

if (str === reversed) {
    console.log("Palindrome");
} else {
    console.log("Not Palindrome");
}  

//3.
let arr = [10,20,30,40,50];
let largest = arr[0];

for(let i = 0; i<arr.length;i++)
{
    if(arr[i]>largest)
    {
        largest = arr[i];
    }
}

console.log("Largest project: ");

//4.
let str = "Rushikesh   Anantpure"
let newstr = str.replaceAll(" ","");

console.log(newstr);

//5.
let str2 = "hello";
let freq = {};

for (let char of str2) {
    if (freq[char]) {
        freq[char]++;
    } else {
        freq[char] = 1;
    }
}

console.log(freq);