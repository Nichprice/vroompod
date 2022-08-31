import { useState } from "react";
import "../EpisodePage.css"

function ReviewCard({review, handleDelete, onUpdateReview}) {
    const { comment, user, id} = review
    const [edit, setEdit] = useState(comment)
    const [show, setShow] = useState(false)

    function handleShow() {
        setShow(!show)
    }

    function handleChange(e) {
        setEdit(e.target.value)
    }

    function handleUpdate(e) {
        e.preventDefault()
    
        fetch(`/reviews/${id}`, {
          method: "PATCH",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({comment:edit}),
        })
        .then(res => res.json())
        .then(updatedReview => onUpdateReview(updatedReview))
        setEdit(comment)
        setShow(!show)
      }

    return(
        <div className="review-card">
            <h3 className="review-card-h">User: {user?.username}</h3>
            <p className="review-card-p">{comment}</p>
            <button className="review-buttons" onClick={handleShow}>Edit</button>
            <button className="review-buttons" onClick={() => handleDelete(id)}>X</button>
            <form className={show ? "display" : "hide"} onSubmit={handleUpdate}>
                 <textarea className="form" type='text' required id='name' name='name' onChange={handleChange} value={edit}/>
                 <button type='submit'>Done</button>
            </form>
        </div>
    )
}

export default ReviewCard