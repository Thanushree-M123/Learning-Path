
import React from 'react';

function ListofPlayers() {
  const players = [
    { name: "Virat Kohli", score: 90 },
    { name: "Rohit Sharma", score: 50 },
    { name: "Shubman Gill", score: 80 },
    { name: "Rishabh Pant", score: 65 },
    { name: "Hardik Pandya", score: 40 },
    { name: "Jasprit Bumrah", score: 55 },
    { name: "Ravindra Jadeja", score: 35 },
    { name: "KL Rahul", score: 85 },
    { name: "Shreyas Iyer", score: 20 },
    { name: "Bhuvneshwar Kumar", score: 75 },
    { name: "Mohammed Shami", score: 30 },
  ];

  const filtered = players.filter(player => player.score < 70);

  return (
    <div>
      <h2>All Players</h2>
      <ul>
        {players.map((player, index) => (
          <li key={index}>{player.name} - {player.score}</li>
        ))}
      </ul>

      <h3>Players with score &lt; 70</h3>
      <ul>
        {filtered.map((player, index) => (
          <li key={index}>{player.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default ListofPlayers;
