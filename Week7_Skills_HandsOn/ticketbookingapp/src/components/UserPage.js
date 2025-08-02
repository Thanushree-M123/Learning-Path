import React, { useState } from 'react';

function UserPage({ onLogout }) {
  const [tickets, setTickets] = useState(0);

  return (
    <div>
      <h2>Hello, User!</h2>
      <p>You have booked {tickets} ticket(s).</p>
      <button onClick={() => setTickets(tickets + 1)}>Book Ticket</button>
      <button onClick={onLogout} style={{ marginLeft: '10px' }}>
        Logout
      </button>
    </div>
  );
}

export default UserPage;
