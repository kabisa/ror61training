import React from 'react';
import PropTypes from 'prop-types';

const Comment = ({ text }) => {
  return <p>Hello {text}!</p>
}

Comment.propTypes = {
  text: PropTypes.string.isRequired
}

export default Comment;
