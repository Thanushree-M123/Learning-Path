import React from 'react';

function GuestPage({ onLogin }) {
  return (
    <div>
      <h2>Welcome, Guest!</h2>
      <p>Please log in to book tickets.</p>
      <button onClick={onLogin}>Login</button>
    </div>
  );
}

export default GuestPage;
