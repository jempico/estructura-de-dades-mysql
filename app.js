/*REFACTORED FUNCTION*/

function palindrome(x) {  

let str = x.toLowerCase().replace(/[\W_]/g, "");

for (let i=0; i<str.length; i++) {
  if (str[i] !== str[str.length - (i+1)]) {
    return false;
  }
}
  return true;
}

console.log(palindrome("almottomla"));


/* FIRST VERSION 
function palindrome(str) {  
let regEx = /[A-Za-z0-9]+/g
let original = str.match(regEx).join("").toLowerCase();
let reverse = [];
let result = true;
  
for (let i=original.length - 1; i>= 0; i--)  {
  reverse.push(original[i]);
}

let compare = function(str1, str2) {
for (let i=0; i<str1.length; i++) {
  if (str1[i] !== str2[i]) {
    result = false;
  }
}
  }

compare(reverse,original);
compare(original,reverse);

return result; 
}

*/
