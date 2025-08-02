
import React from 'react';

function IndianPlayers() {
  const oddTeam = ["Rohit", "Virat", "Pant", "Bumrah", "Gill"];
  const evenTeam = ["Rahul", "Shami", "Jadeja", "Iyer", "Pandya"];

  const merged = [...oddTeam, ...evenTeam];

  return (
    <div>
      <h2>Indian Players</h2>
      <h3>Odd Team</h3>
      <ul>
        {oddTeam.map((player, index) => <li key={index}>{player}</li>)}
      </ul>
      <h3>Even Team</h3>
      <ul>
        {evenTeam.map((player, index) => <li key={index}>{player}</li>)}
      </ul>
      <h3>Merged Players</h3>
      <ul>
        {merged.map((player, index) => <li key={index}>{player}</li>)}
      </ul>
    </div>
  );
}

export default IndianPlayers;
