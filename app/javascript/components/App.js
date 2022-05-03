import React from "react"
import PropTypes from "prop-types"
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import HelloReactRails from "./HelloReactRails";

class App extends React.Component {
  render () {
    return (
      <BrowserRouter>
        <Routes>
          <Route exact path="/" element={<HelloReactRails greeting="Friend" />} />
        </Routes>
      </BrowserRouter>
    );
  }
}

export default App
