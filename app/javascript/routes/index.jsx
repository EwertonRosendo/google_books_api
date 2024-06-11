import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Seach from "../components/Seach"

export default (
  <Router>
    <Routes>
      <Route path="/home" element={<Home />} />
      <Route path="/seach" element={<Seach/>} />
    </Routes>
  </Router>
);