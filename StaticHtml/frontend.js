let socket;

function connectWebSocket() {
    socket = new WebSocket("ws://localhost:8887");

    socket.onopen = function (e) {
        console.log("Verbindung hergestellt!");
        // Dokumentelement mit der ID "name" aktualisieren, wenn die Verbindung hergestellt ist
        document.getElementById("name").textContent = "WebSocket Verbunden";
    };

    socket.onmessage = function (event) {
        const receivedMessage = event.data;
        // Dokumentelement mit der ID "name" mit dem empfangenen String aktualisieren
        document.getElementById("name").textContent = receivedMessage;
    };

    socket.onclose = function (event) {
        console.log("Verbindung geschlossen!", event);
        // Dokumentelement mit der ID "name" aktualisieren, wenn die Verbindung geschlossen ist
        document.getElementById("name").textContent = "WebSocket Verbindung geschlossen";
        // Hier kannst du je nach Bedarf die Verbindung erneut herstellen.
    };

    socket.onerror = function (event) {
        console.error("Verbindungsfehler! Wiederholung in 30 Sekunden...", event);
        // Dokumentelement mit der ID "name" aktualisieren, wenn ein Verbindungsfehler auftritt
        document.getElementById("name").textContent = "WebSocket Fehler. Wiederholung in 30 Sekunden...";
        setTimeout(connectWebSocket, 30000);
    };
}

// Initialisierung der WebSocket-Verbindung
connectWebSocket();
