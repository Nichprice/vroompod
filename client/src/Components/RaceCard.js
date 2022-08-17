import React from "react";
import { useNavigate } from "react-router-dom";

function RaceCard({ race }) {

    let navigate = useNavigate();
    
    return(
        <div onClick={() => navigate(`/races/${race.id}`)}>
            <h1>{race.name}</h1>
        </div>
    )
};

export default RaceCard