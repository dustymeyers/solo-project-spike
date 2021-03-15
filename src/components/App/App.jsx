import React, { useEffect } from 'react';
import { HashRouter as Router, Route, Link, useHistory, } from 'react-router-dom';

// components
import Classes from '../Classes/Classes'
import Home from '../Home/Home';

// style sheet
import './App.css';


function App() {
  return (
    <div className="App">
  

      <Router>
        <header>
          <h1>Spike for App of Holding</h1>
          <h2>Meant for tests and proofs of concepts</h2>
          <nav>
            <Link to="/">Home </Link>
            <Link to="/classes">Classes </Link>
          </nav>
        
        </header>

       
        <Route path="/" exact>
          <Home />
        </Route>

        <Route path="/classes">
          <Classes />
        </Route>
      </Router>


    </div>
  );
}

export default App;
