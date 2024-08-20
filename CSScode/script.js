function divideby80(){
    var inputNumber = parseFloat(document.getElementById('numberInput').value);
    var result = inputNumber / 80;

    document.getElementById('end').innerText = "USD: " + result + " $";
}

function enlargeInput() {
    var anto = document.getElementById('numberInput');
    anto.style.fontSize = '20px';
}

