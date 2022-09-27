import React from "react";
import '../EpisodePage.css'

function ReviewForm( {handleChange, handleSubmit, formData, myUser} ) {
    

    
    return (
      <div className='reviewSubmitForm'>
        <form onSubmit={handleSubmit}>
          <div className="textbox"> 
            <h2>Feel free to add your own review!</h2>
            <textarea id="comment" name="comment" placeholder="Write something.." value={formData.comment} onChange={handleChange}>
            </textarea>
            <button className="submit-review" type="submit">Submit</button>
          </div>
          <div className="sumbit-div">
          </div>
        </form>
      </div>
    );
  }
  
  export default ReviewForm;