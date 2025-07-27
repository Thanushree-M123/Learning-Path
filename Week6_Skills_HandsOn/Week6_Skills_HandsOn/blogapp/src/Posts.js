// src/Posts.js
import React, { Component } from 'react';
import Post from './Post';

class Posts extends Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
      hasError: false
    };
  }

  loadPosts = async () => {
    try {
      const response = await fetch('https://jsonplaceholder.typicode.com/posts');
      const data = await response.json();
      const postObjects = data.map(p => new Post(p.userId, p.id, p.title, p.body));
      this.setState({ posts: postObjects });
    } catch (error) {
      this.setState({ hasError: true });
      console.error('Fetch error:', error);
    }
  };

  componentDidMount() {
    this.loadPosts();
  }

  componentDidCatch(error, info) {
    alert("An error occurred while rendering the component.");
    console.error("Error caught:", error, info);
  }

  render() {
    const { posts } = this.state;
    return (
      <div style={{ padding: '20px' }}>
        <h1 style={{ color: 'darkblue' }}>Blog Posts</h1>
        {posts.map(post => (
          <div key={post.id} style={{ marginBottom: '20px' }}>
            <h2>{post.title}</h2>
            <p>{post.body}</p>
            <hr />
          </div>
        ))}
      </div>
    );
  }
}

export default Posts;
