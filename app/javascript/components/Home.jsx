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
    <div key={index} className="box">

        <div className="book-box">
            <div className="book-title-img">
                <img
                    src={book["thumbnail"]}
                    alt={`${book.title} image`}
                    className="bookImage"
                />
            </div>
            <div className="book-info">
                <p>{book["title"]}</p>
                <p>{book["suntitle"]}</p>
                <p>{book["publishedDate"]}</p>
                <p>{book["authors"]}</p>
                <p>{book["publisher"]}</p>
            </div>

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
        <div className="books">
            {allBooks}
        </div>
          
        
    </div>
    )};

export default Home;
