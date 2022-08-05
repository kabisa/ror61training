import React from "react";
import PropTypes from "prop-types";
import Likes from "./Likes";

const Comment = ({ text, createdAgo, likes, likePostUrl, alreadyLiked }) => {
  return (
    <blockquote>
      <p>{text}</p>
      <small>{createdAgo}</small>
      <Likes
        likes={likes}
        likePostUrl={likePostUrl}
        alreadyLiked={alreadyLiked}
      />
    </blockquote>
  );
};

Comment.propTypes = {
  text: PropTypes.string.isRequired,
  createdAgo: PropTypes.string,
  likes: PropTypes.number.isRequired,
  likePostUrl: PropTypes.string.isRequired,
  alreadyLiked: PropTypes.bool,
};

export default Comment;
