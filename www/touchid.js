
var exec = require("cordova/exec");

var touchid = function () {
    this.name = "TouchIdPlugin";
};

touchid.prototype.auth = function (success, fail, message) {

    exec(success, fail, "TouchIdPlugin", "auth", [message]);
};

module.exports = new touchid();
