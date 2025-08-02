import React, { useState } from 'react';

function Scoreboard() {
  const [score, setScore] = useState(0);
  const [wickets, setWickets] = useState(0);

  const addRun = () => setScore(score + 1);
  const addWicket = () => setWickets(wickets + 1);

  return (
    <div>
      <h2>Score: {score} / {wickets}</h2>
      <button onClick={addRun}>Add Run</button>
      <button onClick={addWicket}>Add Wicket</button>
    </div>
  );
}

export default Scoreboard;
