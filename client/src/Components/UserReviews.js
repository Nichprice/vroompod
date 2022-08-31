function UserReviews({review}) {

    return(
        <div>
            <h1>Episode: {review.episode_id}</h1>
            <h2>Comment: {review.comment}</h2>
        </div>
    )

}

export default UserReviews