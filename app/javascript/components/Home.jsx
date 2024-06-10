import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

const Home = () => {
    const navigate = useNavigate();
    const [books, setBooks] = useState([])

    useEffect(() => {
        const url = "http://localhost:3000/authors/Robyn%20Bryant";
        fetch(url)
          .then((res) => {
            if (res.ok) {
                return res.json();
            }
            throw new Error("Network response was not ok.");
          })
          .then((res) => setBooks(res))
          .catch(() => navigate("/"));
      }, []);

    const allBooks = books.map((book, index) => (
    <div key={index}>
        <div>
            <p>{book["title"]}</p>
            <p>{book["subtitle"]}</p>
            <p>{book["description"]}</p>
            <p>{book["authors"]}</p>
            <p>{book["publishedDate"]}</p>
            <p>{book["publisher"]}</p>
            <img
              src={book["thumbnail"]}
              alt={`${book.title} image`}
              className="bookImage"
            />
        </div>
    </div>
    ));

    return(
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

          {allBooks}
        
    </div>
    )};

export default Home;
