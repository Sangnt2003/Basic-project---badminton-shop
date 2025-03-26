


"use strict";

var connection = new signalR.HubConnectionBuilder().withUrl("/chatHub").build();

// Disable the send button until connection is established.
document.getElementById("sendButton").disabled = true;

connection.on("ReceiveMessage", function (user, message) {
    var li = document.createElement("li");
    li.textContent = `${user}: ${message}`;
    li.classList.add("message");

    // Ki?m tra xem tin nh?n ???c nh?n c� ph?i t? ng??i d�ng hi?n t?i kh�ng
    if (user === document.getElementById("userInput").value) {
        li.classList.add("message-sent"); // Tin nh?n t? ng??i d�ng hi?n t?i
    } else {
        li.classList.add("message-received"); // Tin nh?n t? ng??i kh�c
    }

    var messagesList = document.getElementById("messagesList");
    var firstChild = messagesList.firstChild; // L?y tin nh?n ??u ti�n trong danh s�ch
    if (firstChild) {
        messagesList.insertBefore(li, firstChild); // Th�m tin nh?n m?i v�o tr??c tin nh?n ??u ti�n
    } else {
        messagesList.appendChild(li); // N?u danh s�ch r?ng, th�m tin nh?n m?i v�o cu?i danh s�ch
    }

    scrollToBottom();
});
connection.start().then(function () {
    document.getElementById("sendButton").disabled = false;
}).catch(function (err) {
    return console.error(err.toString());
});

document.getElementById("sendButton").addEventListener("click", function (event) {
    var user = document.getElementById("userInput").value;
    var message = document.getElementById("messageInput").value.trim();

    if (message === "") {
        var errorMessage = document.getElementById("errorMessage");
        errorMessage.style.display = 'block';
        document.getElementById("messageInput").focus();
        return;
    }

    var errorMessage = document.getElementById("errorMessage");
    errorMessage.style.display = 'none';

    connection.invoke("SendMessage", user, message).catch(function (err) {
        return console.error(err.toString());
    });
    document.getElementById("messageInput").value = '';
    event.preventDefault();
});

document.getElementById('closeButton').addEventListener('click', function () {
    var chatSection = document.getElementById('chatSection');
    var chatButton = document.getElementById('chatButton');
    chatSection.classList.remove('visible');
    chatButton.style.display = 'block'; // Hi?n th? l?i n�t chat khi ?�ng khung chat
});

document.getElementById('chatButton').addEventListener('click', function (event) {
    var chatSection = document.getElementById('chatSection');
    var chatButton = document.getElementById('chatButton');
    chatSection.classList.add('visible');
    chatButton.style.display = 'none'; // ?n n�t chat khi m? khung chat
    scrollToBottom();
});

function scrollToBottom() {
    var messagesList = document.getElementById('messagesList');
    messagesList.scrollTop = messagesList.scrollHeight;
}
