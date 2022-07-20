import React from "react";
import PropTypes from "prop-types";
import Likes from "./Likes";

const Comment = ({ text, createdAgo }) => {
  return (
    <blockquote>
      <p>{text}</p>
      <small>{createdAgo}</small>
      <Likes />
    </blockquote>
  );
};

Comment.propTypes = {
  text: PropTypes.string.isRequired,
  createdAgo: PropTypes.string,
};

export default Comment;
