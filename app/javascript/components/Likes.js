import React, { useState } from "react";
import PropTypes from "prop-types";

const Likes = ({ likes, likePostUrl }) => {
  const [count, setCount] = useState(likes);

  const onLike = () => {
    const options = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({ like: { uuid: "test" } }),
    };

    fetch(likePostUrl, options);
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
  likePostUrl: PropTypes.string.isRequired,
};

export default Likes;
