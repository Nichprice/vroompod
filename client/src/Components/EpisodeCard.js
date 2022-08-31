import React from "react";
import { useNavigate } from "react-router-dom"
import "../Episodes.css"


function EpisodeCard({ episode }) {

    let navigate = useNavigate();

    return(
    <div className="episode-card" onClick={() => navigate(`/episodes/${episode.id}`)}>
        <div className="card">
            <img className="episode-pic" src={episode.insta_pic}/>
            <p className="epi-blurb">{episode.blurb}</p>
        </div>
    </div>

    )
};

export default EpisodeCard;