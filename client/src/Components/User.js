import { useEffect, useState } from "react";
import UserReviews from './UserReviews'

function User ({ myUser }) {

    const [userReviews, setUserReviews] = useState([])

        useEffect(() => {
            fetch(`users/${myUser.id}/reviews`)
                .then((r) => r.json())
                .then((data) => setUserReviews(data))
        }, []);

    return(
        <div>
            {userReviews?.map((review) =>
            <UserReviews key={review.id} review={review} />
            )}
            
        </div>
    )

}

export default User;