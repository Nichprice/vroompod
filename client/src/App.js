import './App.css';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import { useAuth0  } from '@auth0/auth0-react';
import Episodes from './Components/Episodes';
import Races from './Components/Races';
import LogIn from './Components/LogIn';
import LogoutButton from './Components/LogoutButton';
import ErrorPage from './Components/ErrorPage';
import EpisodePage from './Components/EpisodePage';
import RacePage from './Components/RacePage'
import { useState, useEffect } from 'react';

function App({postUser}) {

  const {isAuthenticated} = useAuth0();
  const { user } = useAuth0();
  const [myUser, setMyUser] = useState([])

  function postUser() {
    fetch("/users", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json"
        },
          body: JSON.stringify(user.email)
        })
    .then((r) => r.json())
    .then((data) => setMyUser(data))
    }
    
    useEffect(() =>{
        if (user) {postUser()}
    }, [user])

  return (
    <BrowserRouter> 
      <nav> 
      🏎💨
        <Link to="/episodes"> Episodes </Link>
        <Link to="/races"> Races </Link>
        <Link to="/login"> {!isAuthenticated ? 'Log In' : 'Log Out'} </Link>
         
      </nav>
      <Routes>
        <Route path="/episodes" element={<Episodes/>}/>
        <Route path="/episodes/:id" element={<EpisodePage myUser={myUser}/>}/>
        <Route path="/races" element={<Races/>}/>
        <Route path="/races/:id" element={<RacePage/>}/>
        <Route path="/login" element={<LogIn/>}/>
        <Route path="*" element={<ErrorPage/>}/>
      </Routes> 
    </BrowserRouter>
  );
}

export default App;
