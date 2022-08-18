import React, { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import ReviewCard from './ReviewCard'

function EpisodePage() {

    const [episode, setEpisode] = useState([])
    const {id} = useParams()
    
    useEffect(() =>{
        fetch(`/episodes/${id}`)
        .then((r) => r.json())
        .then((data) => setEpisode(data))
    }, [])

    const reviews = episode.reviews

    return (
        <div>
            <img src={episode.insta_pic}/>   
            <div>
                {reviews?.map((review) =>
                <ReviewCard key={review.id} review={review}/>
                )}
            </div>
        </div>
    )
}

export default EpisodePage