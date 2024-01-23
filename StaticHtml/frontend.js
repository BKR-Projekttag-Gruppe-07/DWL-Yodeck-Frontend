let socket;

function connectWebSocket() {
    socket = new WebSocket("ws://localhost:8887");

    socket.onmessage = function (event) {
        const receivedMessage = event.data;
        const parts = receivedMessage.split(";");
        
        document.getElementById("test").textContent = parts[0];
        document.getElementById("year").textContent = parts[1] + " " + parts[2];
        document.getElementById("name").textContent = parts[3];
    };

    socket.onerror = function (event) {
        console.error("Verbindungsfehler! Wiederholung in 30 Sekunden...", event);
        document.getElementById("name").textContent = "WebSocket Fehler. Wiederholung in 30 Sekunden...";
        setTimeout(connectWebSocket, 30000);
    };
}

// Initialisierung der WebSocket-Verbindung
connectWebSocket();
