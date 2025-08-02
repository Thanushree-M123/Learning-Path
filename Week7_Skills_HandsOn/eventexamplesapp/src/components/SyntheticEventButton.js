import React from 'react';

function SyntheticEventButton() {
  const handleClick = (e) => {
    alert('I was clicked');
  };

  return (
    <div>
      <h2>Synthetic Event Button</h2>
      <button onClick={handleClick}>Click Me</button>
    </div>
  );
}

export default SyntheticEventButton;
