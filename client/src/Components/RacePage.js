import React, { useEffect, useState } from "react"
import { useParams } from "react-router-dom"

function RacePage() {

    const [race, setRace] = useState([])
    const { id } = useParams() 

    useEffect(() => {
        fetch(`/races/${id}`)
            .then((r) => r.json())
            .then((data) => setRace(data))
    }, [])

    return (
    <div>
        <h1>{race.name}</h1>
        <div>
            <h2>Race Results</h2>
            <p>{race.results_first}</p>
            <p>{race.results_second}</p>
            <p>{race.results_third}</p>
        </div>
        <div>
            <h2>Current Driver Standings</h2> 
            <p>{race.driver_standings_first}</p>
            <p>{race.driver_standings_second}</p>
            <p>{race.driver_standings_third}</p>        
        </div>
        <div>
            <h2>Current Constructor Standings</h2>
            <p>{race.constructor_standings_first}</p>
            <p>{race.constructor_standings_second}</p>
            <p>{race.constructor_standings_third}</p>
        </div>
    </div>
    )
};

export default RacePage