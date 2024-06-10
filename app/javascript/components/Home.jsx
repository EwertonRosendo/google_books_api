import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

export default () => (
    <div>
      
          <h1>Food Recipes</h1>
          <p>
            DEU BOM ISSO DAQUI AMEM
          </p>
          <hr/>
          <Link
            to="/home"
            
            role="button"
          >
            View Recipes
          </Link>
        
    </div>
  );

//export default Home;
