import {useEffect, useState} from 'react';
import {useStore, useDispatch} from 'react-redux';
import axios from 'axios';


function Classes() {
  const dispatch = useDispatch();
  // const classesList = useStore(store => store.classesList);

  const [classesList, setClassesList] = useState([]);
  const [chosenClass, setChosenClass] = useState(0);

  console.log(classesList);

  useEffect(() => {
    axios
      .get('/api/classes/')
      .then(results => {
        console.log('results are', results);

        setClassesList(results.data);
      })
      .catch(err => console.log('error getting classes', err));
  }, []);

  const chooseClass = () => {
    console.log(chosenClass);
    
  }

  return (
    <>
      <select onChange={event => setChosenClass(event.target.value)}>
        {classesList.length ?
          classesList.map(characterClass => {
            console.log(characterClass);
            return(<option value={characterClass.id} key={characterClass.id}>
              {characterClass.class_name}
            </option>)
          }) : <option>No classes</option>}
      </select>
      <button onClick={chooseClass}>Select</button>
    </>
  )
} // end Classes

export default Classes;