---

# 🟢 BASIC INTERVIEW QUESTIONS

### 1. What are the 3 core technologies of web development?

👉 Expectation:

* HTML → Structure
* CSS → Styling
* JavaScript → Logic

---

### 2. What is the DOM?

👉 Expectation:

* DOM = Document Object Model
* Tree-like structure of HTML
* Browser creates it

---

### 3. What is the difference between HTML and DOM?

👉 Key Points:

* HTML = static code
* DOM = live object representation

---

### 4. What is the window object?

👉 Expectation:

* Global object created by browser
* Contains DOM, BOM, functions like `alert()`

---

### 5. Difference between `innerText`, `innerHTML`, `textContent`?

👉 Answer:

* `innerText` → visible text only
* `innerHTML` → includes HTML tags
* `textContent` → includes hidden text

---

### 6. How do you select elements in JavaScript?

👉 Methods:

```js
getElementById
getElementsByClassName
getElementsByTagName
querySelector
querySelectorAll
```

---

# 🟡 INTERMEDIATE QUESTIONS

### 7. Difference between `querySelector` and `querySelectorAll`?

👉 Answer:

* `querySelector` → first match
* `querySelectorAll` → all matches (NodeList)

---

### 8. Difference between HTMLCollection and NodeList?

👉 Key Points:

* HTMLCollection → live
* NodeList → static

---

### 9. What is event bubbling? (Important 🔥)

👉 Expectation:

* Event moves from child → parent

---

### 10. What is event capturing?

👉 Expectation:

* Event flows from parent → child

---

### 11. How to create and add elements dynamically?

```js
let el = document.createElement("div");
parent.append(el);
```

---

### 12. Difference between `append()` and `prepend()`?

👉 Answer:

* `append()` → end
* `prepend()` → start

---

### 13. Difference between `before()` and `after()`?

👉 Answer:

* `before()` → outside, before element
* `after()` → outside, after element

---

### 14. How do you remove an element?

```js
element.remove();
```

---

### 15. Difference between `getAttribute` and `setAttribute`?

👉 Answer:

* get → read value
* set → change value

---

# 🟠 ADVANCED INTERVIEW QUESTIONS

### 16. Difference between `classList` and `className`?

👉 Answer:

* `className` → replaces entire class
* `classList` → add/remove/toggle safely

---

### 17. What is the difference between inline style and JS styling?

👉 Expectation:

* JS uses `element.style`
* Inline overrides CSS sometimes

---

### 18. What happens when you use `setAttribute("class", "new")`?

👉 Important:

* It **overwrites existing classes** ❗

---

### 19. What is a Node in DOM?

👉 Answer:

* Every element, text, attribute = node

---

### 20. What is the difference between `append()` and `appendChild()`?

👉 Answer:

* `append()` → can add text + multiple elements
* `appendChild()` → only one node

---

### 21. How does JavaScript interact with HTML?

👉 Answer:

* Through DOM
* Using `document` object

---

### 22. What is the difference between `document` and `window`?

👉 Answer:

* `document` → represents HTML
* `window` → represents browser

---

# 🔴 SCENARIO-BASED QUESTIONS (VERY IMPORTANT 🔥)

### 23. How would you change text of multiple elements?

👉 Expectation:

* Loop + querySelectorAll

---

### 24. How would you build a dynamic list using JS?

👉 Expectation:

* createElement
* append

---

### 25. How would you toggle dark mode?

👉 Expectation:

```js
document.body.classList.toggle("dark");
```

---

### 26. How to handle button click?

👉 Answer:

```js
button.addEventListener("click", function() {
  // logic
});
```

---

### 27. How to delete an item when clicking a button?

👉 Expectation:

* Event listener + `.remove()`

---

### 28. How to update UI without reloading page?

👉 Answer:

* DOM manipulation

---

# 🧠 HR + Concept Twist Questions

### 29. Why is DOM manipulation important?

👉 Answer:

* Makes websites interactive
* Updates UI dynamically

---

### 30. Which method do you prefer for selecting elements and why?

👉 Best Answer:

* `querySelector` (flexible, modern)

---

# 🚀 PRO TIP (Very Important)

In interviews, don’t just give definitions.
👉 Always combine:

* Definition
* Example
* Use case

Example:

> "DOM is a tree structure created by the browser which allows JavaScript to dynamically access and modify HTML elements."

---

