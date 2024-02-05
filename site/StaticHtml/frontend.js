let socket;


function connectWebSocket() {
    socket = new WebSocket("ws://localhost:8887"); //gegebenfalls 212.132.65.11 wenn auf server

    socket.onmessage = function (event) {
        const receivedMessage = event.data;
        const parts = receivedMessage.split(";");
        
        document.getElementById("section1").textContent = parts[0];
        document.getElementById("section2").textContent = parts[1] + " " + parts[2];
        document.getElementById("section3").textContent = parts[3];
    };

    socket.onerror = function (event) {
        console.error("Verbindungsfehler! Wiederholung in 5 Sekunden...", event);
        document.getElementById("section1").textContent = "WebSocket Fehler. Wiederholung in 5 Sekunden...";
        setTimeout(connectWebSocket, 5000);
    };
}

// Initialisierung der WebSocket-Verbindung
connectWebSocket();
