
---

# ClokLand Radio

ClokLand Radio is a decentralized radio platform built on the Stacks blockchain. It offers 24/7 streaming, track management, song requests, and visitor analytics features.

[ClokLand Radio](clokland-radio.png)

## Features

- **24/7 Streaming**: Enjoy continuous streaming of music tracks.
- **Track Management**: Add and manage tracks on the platform.
- **Song Requests**: Submit song requests via email entry wizard on the UI.
- **Visitor Analytics**: Track total and unique visitors to the platform.
- **Free Streaming Service**: Access the free 24-hour radio streaming service.

## Installation

```bash
git clone https://github.com/your-github-username/clokland-radio.git
cd clokland-radio
npm install
```

## Usage

```bash
npm start
```

Visit [http://localhost:3000](http://localhost:3000) in your web browser to access the ClokLand Radio application.

## How to Use

- **Adding Tracks**: Only accessible by the contract owner. Use the "Add Track" button in the UI to add new tracks.
- **Retrieving Track Information**: Accessible to all users. Use the UI to view available track information.
- **Submitting Song Requests**: Users can submit song requests via the email entry wizard on the UI.
- **Managing Streaming Service**: Only accessible by the contract owner. Use the UI to set and manage the URL for the free 24-hour radio streaming service.
- **Viewing Visitor Analytics**: Hit counters are visible to all users, providing insights into platform engagement.

## Technologies Used

- **Smart Contract**: Clarity
- **Frontend**: React.js, Bootstrap
- **Backend**: Node.js, Express.js
- **Blockchain**: Stacks
- **IPFS**: InterPlanetary File System for decentralized file storage
- **Messaging Service**: Twilio for handling song requests via email entry wizard

## Contributing

Contributions are welcome! Please fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---
