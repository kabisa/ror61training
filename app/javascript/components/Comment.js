import React from "react";
import PropTypes from "prop-types";
import Likes from "./Likes";

const Comment = ({ text, createdAgo, likes }) => {
  return (
    <blockquote>
      <p>{text}</p>
      <small>{createdAgo}</small>
      <Likes likes={likes} />
    </blockquote>
  );
};

Comment.propTypes = {
  text: PropTypes.string.isRequired,
  createdAgo: PropTypes.string,
  likes: PropTypes.number.isRequired,
};

export default Comment;
