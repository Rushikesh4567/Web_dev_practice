# explanation of inline to block 

# 1. Default behavior

    -span is an inline element, meaning:

    -It only takes required width

    -It does not start on a new line

# Example default layout:

    -This is First text.
    -This is Second text.
    -After applying display: block
    -display: block;

# Now the element:

    ✔ Starts on a new line
    ✔ Takes full width of container

# Layout becomes:

    This is
    First
    text.

    This is
    Second
    text.

2️⃣ Convert Block Element to Inline
Explanation
Default behavior of div

div is a block element, so it looks like:

Box1
Box2
Box3

Each element takes full width.

After display: inline
display: inline;

Now they behave like text elements:

Box1 Box2 Box3

Important limitations of inline elements:

❌ Cannot set width
❌ Vertical margin not effective
❌ Height cannot be controlled

3️⃣ Create Navigation Menu Using Inline-Block
Explanation
display: inline-block

It combines features of inline and block.

Properties:

Feature	Works?
Elements in same row	✔
Width control	✔
Height control	✔
Margin & Padding	✔

So layout becomes:

[Home] [About] [Contact]

This is why inline-block is used in menus.

4️⃣ Hide Element Using display: none
display: none removes the element from document flow.

Before:

Box1
Box2
Box3

After:

Box1
Box3

The browser behaves as if Box2 never existed.

Important difference:

Property	Effect
display: none	Removes element completely
visibility: hidden	Element invisible but space remains

Example:

Box1
(empty space)
Box3