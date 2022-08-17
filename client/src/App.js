import './App.css';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import Episodes from './Components/Episodes';
import Races from './Components/Races';
import LogIn from './Components/LogIn';
import ErrorPage from './Components/ErrorPage';
import EpisodePage from './Components/EpisodePage';
import RacePage from './Components/RacePage'

function App() {
  return (
    <BrowserRouter> 
      <nav> 
      🏎💨
        <Link to="/episodes"> Episodes </Link>
        <Link to="/races"> Races </Link>
        <Link to="/login"> Log In </Link> 
      </nav>
      <Routes>
        <Route path="/episodes" element={<Episodes/>}/>
        <Route path="/episodes/:id" element={<EpisodePage/>}/>
        <Route path="/races" element={<Races/>}/>
        <Route path="/races/:id" element={<RacePage/>}/>
        <Route path="/login" element={<LogIn/>}/>
        <Route path="*" element={<ErrorPage/>}/>
      </Routes> 
    </BrowserRouter>
  );
}

export default App;
