import { useAuth0 } from "@auth0/auth0-react"
import React, { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import ReviewCard from './ReviewCard'
import ReviewForm from "./ReviewForm"

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



  return (
    <div>
      <img src={episode.insta_pic}/>   
      <div>
        {reviews?.map((review) =>
        <ReviewCard key={review.id} review={review} handleDelete={handleDelete}/>
        )}
      </div>
      <ReviewForm handleChange={handleChange} handleSubmit={handleSubmit} formData={formData} myUser={myUser}/>
    </div>
  )
}

export default EpisodePage