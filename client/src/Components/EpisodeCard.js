import React from "react";
import { useNavigate } from "react-router-dom"
import "../Episodes.css"


function EpisodeCard({ episode }) {

    let navigate = useNavigate();

    let string = episode.blurb
    let trimmed = string.substring(0, 40)
    let elipchecker = trimmed.slice(-3)
    // let final = () => if (elipchecker ==)

    return(
    <div className="episode-card" onClick={() => navigate(`/episodes/${episode.id}`)}>
        <div className="card">
            <img className="episode-pic" src={episode.insta_pic}/>
            <p className="epi-blurb">{trimmed + "..."}</p>
        </div>
    </div>

    )
};

export default EpisodeCard;