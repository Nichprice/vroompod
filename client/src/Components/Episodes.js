import React, { useEffect, useState } from 'react'
import EpisodeCard from './EpisodeCard'

function Episodes() {

    const [episodes, setEpisodes] = useState([])
    const [epi, setEpi] = useState([])

    useEffect(() => {
        fetch("/episodes")
            .then((r) => r.json())
            .then((data) => setEpisodes(data))
        }, []);

    function renderEpi(clicked) {
        return setEpi(clicked)
    }
    
    
    return (
        <div>
            This is the episodes page.
            <div className='episode-card'>
            {episodes.map((episode) =>
            <EpisodeCard key={episode.id} episode={episode} renderEpi={renderEpi}/>
            )}
            </div>
        </div>
    )

}

export default Episodes;