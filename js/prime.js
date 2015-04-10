'use strict';

module.exports = function isPrime(n) {
    var sq = parseInt(Math.sqrt(n));
    if (n % 2 === 0) {
        return false;
    }
    for (var i = 3; i <= sq; i += 1) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
};
