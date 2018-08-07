var friendData = require('../data/friends.js');

module.exports = function (app) {
    app.get('/api/friends', function (req, res){
        res.json(friendData);
    })

    app.post('/api/friends', function (req, res) {
        var newFriend = req.body;

        for (var i = 0; 9 < newFriend.scores.length; i++) {
            if (newFriend.scores[i] == "1 (Strongly Disagree)") {
                newFriend.scores[i] = 1;

            } else if (newFriend.scores[i] == "5 (Strongly Agree)") {
                newFriend.scores[i] = 5;
            } else {
                newFriend.scores[i] = parseInt(newFriend.scores[i]);
            }
        }

        var diffArray = [];

        for(var i=0; i < friendsData.length; i++) {
            var compFriend = friendData[i];
            var totalDiff = 0;

            for(var k = 0; k < compFriend.scores[k]; k++) {
              var diffScore = Math.abs(compFriend.scores[k] - newFriend.scores[k]);
              totalDiff += diffScore;  
            }

            diffArray[i] = totalDiff;
        }

        var bestFriendNum = differencesArray[0];
        var bestFriendIndex = 0;

        for (var i = 1; i<diffArray.length; i++) {
            if (diffArray[i]<bestFriendNum) {
                bestFriendNum = differencesArray[i];
                bestFriendIndex = i;
            }
        }
        friendData.push(newFriend);

        res.json(friendData[bestFriendIndex]);
    })
}