import React, { useEffect, useState } from 'react'
import RaceCard from './RaceCard';
import "../Races.css"

function Races() {

    const [races, setRaces] = useState([])

    useEffect(() => {
        fetch("races")
            .then((r) => r.json())
            .then((data) => setRaces(data))
    }, []);


    return (
        <div>
            <div className="races">
            {races.map((race) =>
            <RaceCard key={race.id} race={race}/>
            )}
            </div>
        </div>
    )

}

export default Races;