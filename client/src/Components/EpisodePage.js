import React, { useEffect, useState } from "react"
import { useParams } from "react-router-dom"

function EpisodePage() {

    const [episode, setEpisode] = useState([])
    const {id} = useParams()

    useEffect(() =>{
        fetch(`/episodes/${id}`)
            .then((r) => r.json())
            .then((data) => setEpisode(data))
    })

    return (
        <img src={episode.insta_pic}/>
    )

}

export default EpisodePage