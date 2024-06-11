import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";


const Seach = () => {
    const navigate = useNavigate();

    const [title, setTitle] = useState("");
    const [author, setAuthor] = useState("");
    const [publisher, setPubliser] = useState("");


    const submitForm = () =>{
        //axios.get(`http://localhost:3000/authors/title=${title}&author=${author}&publisher=${publisher}`).then((response) => {
            axios.get(`http://localhost:3000/authors/title=${title}&author=${author}&publisher=${publisher}`).then((response) => {
            console.log(response.data);
        })
    }

    return(
        <div>
            <form>
                <label>Title</label>
                <input type="text" onChange={(e) => {setTitle(e.target.value)}}  placeholder="Book title.."/>
                <br />

                <label>Auhtor</label>
                <input type="text" onChange={(e) => {setAuthor(e.target.value)}} placeholder="Author's name.." />
                <br />
                
                <label>Publisher</label>
                <input type="text" onChange={(e) => {setPubliser(e.target.value)}} placeholder="Publisher's name.." />
            </form>

            <button onClick={submitForm}>Seach</button>
        </div>
    )


};

export default Seach;