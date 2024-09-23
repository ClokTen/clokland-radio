# ClokLand 24/7 Radio dApp

**ClokLand 24/7 Radio** is a decentralized streaming platform designed to broadcast hip-hop music and radio content around the clock. Built on IPFS for decentralized storage, ClokLand Radio ensures that content is available globally without centralized control.

## Features

- **24/7 Streaming**: Non-stop hip-hop music, podcasts, and more.
- **Decentralized Storage**: Audio files are hosted on IPFS for resilient, decentralized access.
- **$CLOK10 Integration** (coming soon): Future plans to reward listeners with $CLOK10 tokens for engagement.

## Tech Stack

- **Frontend**: React.js
- **Storage**: IPFS (InterPlanetary File System)
- **Blockchain**: Stacks (future $CLOK10 rewards)
- **Audio Streaming**: HTML5 audio via IPFS links

## Installation

### Prerequisites

- **Node.js** (version 14+)
- **npm** or **yarn**
- **IPFS Account** (e.g., [Pinata](https://pinata.cloud/))
- **Stacks Wallet** (optional for blockchain integration)

### Steps

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/clokland-24-7-radio.git
   cd clokland-24-7-radio

   Install dependencies:
Using npm:

bash
Copy code
npm install
Or using yarn:

bash
Copy code
yarn install
Upload Audio Files to IPFS:
Sign up at Pinata or set up your own IPFS node.
Upload your audio files and obtain the IPFS content hash (CID) for each file.
Configure the IPFS Links:
Open src/RadioStream.js and replace the placeholder <your-ipfs-hash> with the IPFS CID of your audio file.

Example:

javascript
Copy code
<audio controls autoPlay loop>
  <source src="https://gateway.pinata.cloud/ipfs/<your-ipfs-hash>" type="audio/mp3" />
  Your browser does not support the audio element.
</audio>
Replace <your-ipfs-hash> with the CID of your IPFS-hosted audio.
Run the application:
Using npm:

bash
Copy code
npm start
Or using yarn:

bash
Copy code
yarn start
The app will run at http://localhost:3000.
Deployment

Build the app:
bash
Copy code
npm run build
Or using yarn:

bash
Copy code
yarn build
Deploy the build folder:
Upload the contents of the build folder to a static hosting provider such as Vercel, Netlify, or GitHub Pages.
