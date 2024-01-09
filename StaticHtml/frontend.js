let socket;

function connectWebSocket() {
    socket = new WebSocket("ws://localhost:8887");

    socket.onopen = function(e) {
        console.log("Connection established!");
        alert("passt brudi");
        document.getElementById("name").textContent = "WebSocket Verbunden";
    };

    socket.onmessage = function(event) {
        document.getElementById("name").textContent = event.data;
    };

    socket.onerror = function(event) {
        console.log("Connection failed! Retrying in 30 seconds.", event);
        document.getElementById("name").textContent = "WebSocket Error";
        setTimeout(connectWebSocket, 30000); 
    };
}

connectWebSocket(); 