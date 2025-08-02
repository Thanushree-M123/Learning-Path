import React from 'react';

// Component Imports
import Counter from './components/Counter';
import WelcomeButton from './components/WelcomeButton';
import SyntheticEventButton from './components/SyntheticEventButton';
import CurrencyConvertor from './components/CurrencyConvertor';

// App Component
function App() {
  return (
    <div style={{ padding: '20px', fontFamily: 'Arial, sans-serif' }}>
      <h1>React Event Examples App</h1>

      {/* Counter with onClick */}
      <section>
        <h2>Counter</h2>
        <Counter />
      </section>

      {/* Welcome Button with onClick */}
      <section>
        <h2>Welcome Button</h2>
        <WelcomeButton />
      </section>

      {/* Synthetic Event Example */}
      <section>
        <h2>Synthetic Event Button</h2>
        <SyntheticEventButton />
      </section>

      {/* Currency Converter with form submission */}
      <section>
        <h2>Currency Converter</h2>
        <CurrencyConvertor />
      </section>
    </div>
  );
}

export default App;
