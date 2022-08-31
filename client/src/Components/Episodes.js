import React, { useEffect, useState } from 'react'
import EpisodeCard from './EpisodeCard'
import '../Episodes.css'

function Episodes() {

    const [episodes, setEpisodes] = useState([])

    useEffect(() => {
        fetch("/episodes")
            .then((r) => r.json())
            .then((data) => setEpisodes(data))
        }, []);

    console.log(episodes)
    
    return (
        <div>
            <div className='row'>
            {episodes.map((episode) =>
            <EpisodeCard key={episode.id} episode={episode}/>
            )}
            </div>
        </div>
    )
}

export default Episodes;