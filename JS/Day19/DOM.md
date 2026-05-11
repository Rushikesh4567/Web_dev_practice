DOCUMENT OBJECT MODEL:

DOM MANIPULATION:

1. SELECTING ELEMENTS
    - BY ID: document.getElementById("myId");
    - BY CLASS: document.getElementsByClassName("myClass");
    - BY TAG: document.getElementsByTagName("p");

2. QUERY SELECTOR
    - FIRST ELEMENT: document.querySelector(".class");
    - ALL ELEMENTS: document.querySelectorAll(".class");

1. PROPERTIES
    1. tagName
        element.tagName
    2. innerText
        Visible text only
    3. innerHTML
        Includes HTML tags
    4. textContent
        Includes hidden text also

2. ATTRIBUTES:
    Get Attribute
        element.getAttribute("id");
    Set Attribute
        element.setAttribute("class", "newClass");

3. CREATE AND INSERT ELEMENTS
- CREATE
    - let el = document.createElement("div");
- INSERT
    Append (inside, end)
        parent.append(el);
    Prepend (inside, start)
        parent.prepend(el);
    Before
        node.before(el);
    After
        node.after(el);

- DELETE ELEMENTS:
    - node.remove();

4.  styling with js

    - element.style.color = "red";
    - element.style.backgroundColor = "black";

5. Class Manipulation

    Add class
        element.classList.add("newClass");
    Remove class
        element.classList.remove("className");
    Toggle class
        element.classList.toggle("active");

👉 Important:
Using setAttribute replaces existing classes
Using classList does NOT overwrite