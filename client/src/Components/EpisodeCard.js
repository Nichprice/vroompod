import React from "react";
import { useNavigate } from "react-router-dom"



function EpisodeCard({ episode }) {

    let navigate = useNavigate();

    return(
    <div onClick={() => navigate(`/episode/${episode.id}`)}>
        <h2>{episode.name}</h2>
        <img src={episode.insta_pic}/>
        <p>{episode.blurb}</p>
    </div>

    )
};

export default EpisodeCard;