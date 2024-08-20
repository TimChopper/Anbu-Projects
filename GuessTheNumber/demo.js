
var totalscore = 10;
function check() {
    var gn = document.getElementById("gussnum");
    var result = document.getElementById("result");
    var score = document.getElementById("score");
    var enterednumber = parseInt(gn.value); // Parse the value to an integer



    var ranNum = Math.floor(Math.random()*10)+1;
    if (ranNum === enterednumber) { // Compare as integers
        result.textContent = "RIGHT";
        alert("You are right!");
    } else {
        totalscore = totalscore - 1;
        score.textContent = "Score: " + totalscore; // Corrected typo here
        result.textContent = "You are wrong";
    }
}
