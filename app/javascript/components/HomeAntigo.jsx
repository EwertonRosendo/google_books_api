import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

const Home = () => {
    const navigate = useNavigate();
    const [books, setBooks] = useState([])

    useEffect(() => {
        //const url = "http://localhost:3000/authors/Robyn%20Bryant";
        fetch(url)
          .then((res) => {
            if (res.ok) {
                console.log(res)
                return res.json();
            }
            throw new Error("Network response was not ok.");
          })
          .then((res) => setBooks(res))
          .catch(() => navigate("/"));
      }, []);

      const allBooks = books.map((book, index) =>(
        <div key={index}>
            <h2>{book.title}</h2>
            <h2>{book.subtitle}</h2>
            <h2>{book.description}</h2>
            <h2>{book.authors}</h2>
            <h2>{book.publishedDate}</h2>
            <h2>{book.publisher}</h2>
            <img
              src={book.imageLinks.thumbnail+".jpg"}
              alt={`${book.title} image`}
              className=""
            />
            <h2>{book.imageLinks.thumbnail}</h2>
        </div>
      ))

      const noBooks = () => {
        return(
          <>
            <p>sasa</p>
          </>
        )};
      return(
            <div className="row">
                {books.length > 0 ? allBooks : noBooks}
            </div>
      )
};

export default Home;