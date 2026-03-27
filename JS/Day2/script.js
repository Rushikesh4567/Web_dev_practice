//1.
let a = 10;
var b = 20;
const c = 30;

a = 70;
b = 60;
//c = 90;   //can not be redeclared and changed.

console.log(a);  //can not re declared but can be changed.
console.log(b);  //can be redeclared and changed.
//console.log(c);  


//2.
let str = "Rushikesh";
let myage = 22;
let city = "JSP";

//3.
console.log(typeof str);
console.log(typeof myage);
console.log(typeof city);

//4.
let obj={
    name:"Rushikesh",
    age:22,
    GPA:8.3
};

console.log(obj.name," ",obj.age," ",obj.GPA);

//you can't redeclare in same scope using let so: 
age = 25;
console.log(obj.age);

//5.
//you can't redeclare and change its values using const

//In case of var, you can redeclare its values and change its values but not mostly used. so what can be modified?
//ans =>
    obj.age = 26;
    obj.name = "Rushi";

    console.log(obj);