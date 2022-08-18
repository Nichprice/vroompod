import React, { useEffect, useState } from 'react'
import EpisodeCard from './EpisodeCard'

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
            This is the episodes page.
            <div className='episode-card'>
            {episodes.map((episode) =>
            <EpisodeCard key={episode.id} episode={episode}/>
            )}
            </div>
        </div>
    )
}

export default Episodes;