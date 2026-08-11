import { useState } from "react";
import Student from "./Student";

function App() {
   const [count, setCount] = useState(0);
  return (
    <div>
      <Student
        name="Rushikesh"
        course="AI & ML"
      />

      <div>
        <h1>Count: {count}</h1>

        <button onClick={() => setCount(count + 1)}>
          Increment
        </button><br></br>
        
        <button onClick={() => setCount(count - 1)}>
          Decrement
        </button><br></br>
        <button onClick={() => setCount(0)}>
          Reset
        </button>
    </div>

    </div>

    


  );
}

export default App;