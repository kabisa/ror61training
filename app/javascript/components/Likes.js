import React, { useState } from "react";
import PropTypes from "prop-types";

const Likes = () => {
  const [count, setCount] = useState(0);

  const onLike = () => {
    setCount(count + 1);
  };

  return (
    <div className="likes">
      <i className="far fa-heart" onClick={onLike}></i>
      <p>{count}</p>
    </div>
  );
};

export default Likes;
