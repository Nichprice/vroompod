import { useAuth0 } from "@auth0/auth0-react"
import React, { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import ReviewCard from './ReviewCard'
import ReviewForm from "./ReviewForm"
import "../EpisodePage.css"

function EpisodePage({myUser}) {

  const {id} = useParams()
  const [episode, setEpisode] = useState([])
  const [reviews, setReviews] = useState([])
  const [formData, setFormData] = useState({
    comment: "",
    rating: 5,
    user_id: myUser?.id,
    episode_id: id,
  })
   
  console.log(myUser)

  function handleChange(e){
    const {name, value} = e.target
    setFormData({...formData, [name]: value, user_id: myUser.id })
  }

  useEffect(() =>{
    fetch(`/episodes/${id}`)
      .then((r) => r.json())
      .then((data) => setEpisode(data))
  }, [])

  useEffect(() => {
    fetch(`/episodes/${id}/reviews`)
      .then((r) => r.json())
      .then((data) => setReviews(data))
  }, [])

  function handleSubmit(e) {
    e.preventDefault();
      fetch("/reviews", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json"
          },
        body: JSON.stringify(formData),
      })
      .then((r) => r.json())
      .then(newReview => setReviews([...reviews, newReview]))
      
      setFormData({
        comment: ""
      });
  }

  function handleDelete(id) {
    const filteredReviews = reviews.filter((review) => review.id !== id)
    setReviews(filteredReviews)
    fetch(`/reviews/${id}`,{
      method: "DELETE",
    })
  }

  function onUpdateReview(updatedReview) {
    const updatedReviews = reviews.map(review => {
      if(review.id === updatedReview.id) {
        return updatedReview
      } else {
        return review
      }
    }); 
    setReviews(updatedReviews)
  }

  return (
    <div className="episode-div">
        <img class="episode-thumbnail" src={episode.insta_pic}/> 
      <div className="badges">
        <a className="pod-link" href={episode.applepods}>
          <img class="pod-badge" src="https://www.podcastinsights.com/wp-content/uploads/2019/05/apple-podcasts-badge-300.webp"/>  
        </a>
        <a className="pod-link" href={episode.spotify}>
          <img class="pod-badge" src="https://www.podcastinsights.com/wp-content/uploads/2019/04/spotify-podcast-badge-blk-grn-330x80.webp"/>
        </a>
      </div>  
      <div>
        {reviews?.map((review) =>
        <ReviewCard key={review.id} review={review} handleDelete={handleDelete} onUpdateReview={onUpdateReview}/>
        )}
      </div>
      <ReviewForm handleChange={handleChange} handleSubmit={handleSubmit} formData={formData} myUser={myUser}/>
    </div>
  )
}

export default EpisodePage