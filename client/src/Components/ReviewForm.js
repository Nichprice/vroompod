import React from "react";

function ReviewForm( {handleChange, handleSubmit, formData, myUser} ) {
    

    
    return (
      <div className='reviewSubmitForm'>
        <form onSubmit={handleSubmit}>
          <h2>Feel free to add your own review!</h2>
          <div> 
            <textarea className='textarea' id="comment" name="comment" placeholder="Write something.." value={formData.comment} onChange={handleChange} style={{height:200}}></textarea>
          </div>

          <button type="submit">Submit</button>
        </form>
      </div>
    );
  }
  
  export default ReviewForm;