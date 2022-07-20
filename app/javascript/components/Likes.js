import React, { useState } from "react";
import PropTypes from "prop-types";

const Likes = () => {
  const [count, setCount] = useState(0);

  return (
    <div className="likes">
      <i className="far fa-heart"></i>
      <p>{count}</p>
    </div>
  );
};

export default Likes;
