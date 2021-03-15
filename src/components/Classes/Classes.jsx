import {useEffect, useState} from 'react';
import {useStore, useDispatch} from 'react-redux';
import axios from 'axios';


function Classes() {
  const dispatch = useDispatch();
  // const classesList = useStore(store => store.classesList);

  const [classesList, setClassesList] = useState([]);
  const [chosenClass, setChosenClass] = useState(0);
  const [classInfo, setClassInfo] = useState([]);

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
    axios
      .get(`/api/classes/${chosenClass}`)
      .then(results => {
        console.log('Class results are', results);

        setClassInfo(results.data);
      })
      .catch(err => console.log('error getting class info', err));
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
      <ul>
      {classInfo.length ?
        classInfo.map(info => {
          return(
            <li>{info.feature_name}: {info.feature_description}</li>
          );
        }) :
        <p>Pick a class to get info</p>
      }
      </ul>
    </>
  )
} // end Classes

export default Classes;