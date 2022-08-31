import React from "react";
import { useNavigate } from "react-router-dom";
import "../Races.css"

function RaceCard({ race }) {

    let navigate = useNavigate();
    
    return(
        <div className='race-card' onClick={() => navigate(`/races/${race.id}`)}>
            <h1 class="text">{race.name}</h1>
        </div>
    )
};

export default RaceCard