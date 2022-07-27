import React, { useState } from "react";
import PropTypes from "prop-types";

const Likes = ({ likes }) => {
  const [count, setCount] = useState(likes);

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

Likes.propTypes = {
  likes: PropTypes.number.isRequired,
};

export default Likes;
