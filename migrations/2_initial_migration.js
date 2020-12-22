const Colectible= artifacts.require("MyCollectible");

module.exports = function (deployer) {
  deployer.deploy(Colectible);
};
