// WebSocket = require('ws').WebSocket;
// const apiGateway = require('./helpers').apiGateway();

 function SocketService() {
    this.ws = null;
    this.isConnected = false;
    this.serviceId = null;
    this.reconnecting = false;
    this.disconnected = false;
    this.reconnectionDelay = 1000; // 1 sec delay before reconnecting
    this.msgQueue = []; // for queuing up messages during disconnection
    this.msgListener = null;
 }

 SocketService.prototype.connect = function(serviceId, reconnectionDelay = 1){
    this.serviceId = serviceId;
    this.reconnectionDelay = reconnectionDelay * 1000;
    let that = this
    this.ws = new WebSocket('ws://ec2-3-132-215-252.us-east-2.compute.amazonaws.com' + '/socket/?uid='+serviceId);

    console.log('WS:', this.ws)
    this.ws.onopen = function open() {
        console.log('connected');
        that.connected = true;
        while(that.msgQueue.length > 0) {
            that.sendMessage(that.msgQueue.shift())
        }
    };
    
    this.ws.onclose = function close() {
        console.log('disconnected');
        that.connected = false;
        that.reconnect(that.serviceId)
    };

    this.ws.onerror = (e) => {
        console.log('Socket: ', e)
    }
    
    this.ws.onmessage = that.onMessage;
    that.isConnected = true;
}
  
SocketService.prototype.reconnect = function () {
    if (!this.reconnecting) {
        console.log('... setting up reconnection in', this.reconnectionDelay/1000, 'Seconds...');
        this.reconnecting = true;
        this.connected = false;
        let that = this
        setTimeout(function timeout() {
            that.connect(that.serviceId)
            // console.log('...Socket Reconnected .....');
            that.reconnecting = false;
        }, that.reconnectionDelay);
    }
}

SocketService.prototype.disconnect = function () {
    // channel.sink.close(status.goingAway);
    this.isConnected = false;
    this.disconnected = true;
}

SocketService.prototype.sendMessage = function (msg) {
    if(this.connected) this.ws.send(JSON.stringify(msg))
    else {
        console.log('SOCKET NOT CONNECTED: queueing message...')
        if (!this.disconnected) {
            // queue up message for sending after reconnection
            this.msgQueue.push(msg);
            console.log('msg added to queue');
          }
    }
}

SocketService.prototype.onMessage = function (msg) {
    console.log('***********Socket Message Received*************');
    console.log('*******Message:', JSON.parse(msg.toString()));
    if(this.msgListener && typeof this.msgListener === 'function') {
        this.msgListener(msg)
    }
}

// module.exports = new SocketService()