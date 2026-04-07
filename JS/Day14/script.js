//Interview level js array questions.

//1. Move all zeros to end.
    let arr1 = [0,1,0,2,3,0,5];
    let result = [];
    for(let i =0;i<arr1.length;i++)
    {
        if(arr1[i]!==0)
        {
            result.push(arr1[i]);
        }
    }

    while(result.length<arr1.length)
    {
        result.push(0);
    }
    console.log(result);

//2. find missing number

    let arr2 =[1,2,4,5];
    let n = 5;
    let sum = 0;
    let total = n*(n+1)/2 ;
    for(let i =0 ;i<arr2.length;i++)
    {
        sum = sum + arr2[i];
    }

    console.log("Missing no. is ",total - sum);

//3. Intersection of two arrays
    let a1 = [1,2,3,4,5,6];
    let a2 = [2,3,4,6];
    let r = [];

    for(let val of a1)
    {
        if(a2.includes(val))
        {
            r.push(val);
        }
    }
    console.log("Intersection array: ",r);

//4. Sort array without sort()
let a3 = [5,3,8,1];
let temp = 0;
for(let i = 0; i<a3.length;i++)
{
    for(let j =0; j<a3.length-i-1;j++)
    {
        if(a3[j]>a3[j+1])
        {
            temp = a3[j];
            a3[j] = a3[j+1];
            a3[j+1] = temp;
        }
    }
}

console.log("Sorted array is: ",a3);

//5. Longest increasing subarray

let a4 = [1,2,2,3,4,1,2];
let maxlen = 1;
let currlen = 1;

for(let i =1; i<a4.length;i++)
{
    if(a4[i]>a4[i-1])
    {
        currlen++;
        if(currlen>maxlen)
        {
            maxlen = currlen;
        }
    }
    else{
        currlen = 1;
    }
    
}

console.log("The longest increasing array is of size: ",maxlen);

