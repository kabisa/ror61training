import React from "react";
import PropTypes from "prop-types";

const Comment = ({ text, createdAgo }) => {
  return (
    <blockquote>
      <p>{text}</p>
      <small>{createdAgo}</small>
    </blockquote>
  );
};

Comment.propTypes = {
  text: PropTypes.string.isRequired,
  createdAgo: PropTypes.string
};

export default Comment;
