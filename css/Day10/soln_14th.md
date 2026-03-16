/*.box {
  width: 200px;
  padding: 30px;
  border: 5px solid black;
}*/


# Why is it larger than 200px?

Because default box-sizing = content-box.

So total width becomes:

200px (content)
+ 30px left padding
+ 30px right padding
+ 5px left border
+ 5px right border
---------------------
= 270px total width

# Fix Without Removing Padding or Border

.box {
  width: 200px;
  padding: 30px;
  border: 5px solid black;
  box-sizing: border-box;
}

Now:

Total width = 200px

Padding and border stay inside the width