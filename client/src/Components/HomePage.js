import React, { useEffect } from "react";
import { useAuth0 } from "@auth0/auth0-react";

function HomePage() {

    return (
        <div className="welcome-container">
            <div className='welcome'>
            🏎 Welcome to Vroom 💨
            </div>
        </div>    
    )
}

export default HomePage;