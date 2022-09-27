import { useState, useEffect } from 'react';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import { useAuth0  } from '@auth0/auth0-react';
import Episodes from './Components/Episodes';
import Races from './Components/Races';
import LogIn from './Components/LogIn';
import LogoutButton from './Components/LogoutButton';
import ErrorPage from './Components/ErrorPage';
import EpisodePage from './Components/EpisodePage';
import RacePage from './Components/RacePage';
import User from './Components/User';
import LinkedIn from './Components/LinkedIn';
import './App.css'
import HomePage from './Components/HomePage';

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
      <nav className='nav'>
        <span className='nav-span'> 
        <Link to="" className='nav-links'>🏎💨</Link>
        <Link to="/episodes" className='nav-links'> Episodes </Link>
        <Link to="/races" className='nav-links'> Races </Link>
        <Link to="/user" className='nav-links'> {isAuthenticated ? 'User' : ''} </Link>
        <Link to="/login" className='nav-link-logger'> {!isAuthenticated ? 'Log In' : 'Log Out'} </Link>
        </span>
        {/* <Link to="/nicks-linkedin" className='nav-links'>Nick's LinkedIn</Link> */}
      </nav>
      <Routes>
        <Route path="" element={<HomePage/>}/>
        <Route path="/episodes" element={<Episodes/>}/>
        <Route path="/episodes/:id" element={<EpisodePage myUser={myUser}/>}/>
        <Route path="/races" element={<Races/>}/>
        <Route path="/races/:id" element={<RacePage/>}/>
        <Route path="/login" element={<LogIn/>}/>
        <Route path="/user" element={<User myUser={myUser}/>}/>
        <Route path="/nicks-linkedin" element={<LinkedIn/>}/>
        <Route path="*" element={<ErrorPage/>}/>
      </Routes> 
    </BrowserRouter>
  );
}

export default App;
