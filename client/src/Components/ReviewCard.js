import React from "react";

function ReviewCard({review, handleDelete}) {

    return(
        <div>
            <h3>User: {review.user?.username}</h3>
            <p>{review.comment}</p>
            <p onClick={() => handleDelete(review.id)}>X</p>
        </div>
    )
}

export default ReviewCard