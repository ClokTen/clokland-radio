# ClokLand Radio Live 24/7

ClokLand Radio is a decentralized radio platform that allows users to stream music tracks 24/7 while managing the tracks in a decentralized manner. This project includes both backend and frontend components for seamless integration and deployment.

## Features

- **24/7 Streaming**: Users can enjoy continuous streaming of music tracks without interruptions.
- **Decentralized Track Management**: Tracks can be added and removed from the platform in a decentralized manner using smart contracts.
- **User Authentication**: Users can authenticate using their Stacks wallet to access additional features and functionalities.

## Backend Setup

1. **Navigate to the backend directory**:

   ```bash
   cd backend
   ```

2. **Install dependencies**:

   ```bash
   npm install
   ```

3. **Create a `.env` file** with the following content:

   ```dotenv
   PORT=3001
   STACKS_NETWORK=testnet
   STACKS_CONTRACT_ADDRESS=YOUR_CONTRACT_ADDRESS
   STACKS_CONTRACT_NAME=clokland-radio
   STACKS_SENDER_KEY=YOUR_PRIVATE_KEY
   IPFS_API_URL=https://ipfs.infura.io:5001
   ```

4. **Start the backend server**:

   ```bash
   npm start
   ```

## Frontend Setup

1. **Navigate to the frontend directory**:

   ```bash
   cd frontend
   ```

2. **Install dependencies**:

   ```bash
   npm install
   ```

3. **Start the frontend development server**:

   ```bash
   npm start
   ```

## Deployment

1. **Create a `netlify.toml` file** in the root directory with the following content:

   ```toml
   [build]
     command = "npm run build"
     publish = "frontend/build"

   [[redirects]]
     from = "/*"
     to = "/index.html"
     status = 200
   ```

2. **Deploy to Netlify**.

## Technologies Used

- **Backend**: Node.js, Express.js, Stacks.js, IPFS
- **Frontend**: React.js, Stacks.js, Bootstrap
- **Deployment**: Netlify, Stacks Blockchain

## Contributors

- [ClokTen](https://github.com/ClokTen)

## License

This project is licensed under the [MIT License](LICENSE).
