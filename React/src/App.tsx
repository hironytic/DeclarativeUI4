import React from 'react';
import './App.css';

function App(): JSX.Element {
  return (
    <div className="App">
      <UserProfile/>
    </div>
  );
}

function UserProfile(): JSX.Element {
  return (
    <div className="UserProfile">
      <div className="flex-row">
        <Avatar name="hironytic" iconUrl="avatar.png"/>
        <Star count={42}/>
      </div>
    </div>
  )
}

interface IStarProps {
  count: number;
}

function Star({ count }: IStarProps): JSX.Element {
  return (
    <div className="Star">
      <div className="flex-row">
        <div className="StarItem">⭐</div>
        <div className="StarItem">{count}</div>
      </div>
    </div>
  );
}

interface IAvatarProps {
  name: string;
  iconUrl: string;
}

function Avatar({ name, iconUrl }: IAvatarProps): JSX.Element {
  return (
    <div className="Avatar">
      <div className="flex-column">
        <img className="AvatarIcon" src={iconUrl} alt="icon" />
        <div>@{name}</div>
      </div>
    </div>
  )
}

export default App;
