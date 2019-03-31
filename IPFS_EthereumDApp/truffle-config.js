module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", //Should match Ganache's host
      port: 7545, //should match Ganache's port number
      network_id: "*" // Match any network id
    }
  }
};
