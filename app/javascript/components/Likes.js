import React, { useState } from "react";
import PropTypes from "prop-types";
import alert from "sweetalert2";
import cookies from "js-cookie";

const Likes = ({ likes, likePostUrl, alreadyLiked }) => {
  const [count, setCount] = useState(likes);

  const onLike = async () => {
    if (alreadyLiked) return;

    const options = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify({ like: { uuid: cookies.get("uuid") } }),
    };

    const response = await fetch(likePostUrl, options);

    if (!response.ok) return showError();

    setCount(count + 1);
  };

  const showError = () => {
    alert.fire({
      icon: "error",
      title: "Oops...",
      text: "Something went wrong!",
    });
  };

  return (
    <div className="likes">
      <i
        className={`fa${alreadyLiked ? "" : "r"} fa-heart`}
        onClick={onLike}
      ></i>
      <p>{count}</p>
    </div>
  );
};

Likes.propTypes = {
  likes: PropTypes.number.isRequired,
  likePostUrl: PropTypes.string.isRequired,
  alreadyLiked: PropTypes.bool,
};

export default Likes;
