//
//  SocketService.swift
//  smack-app
//
//  Created by Ayşegül Koçak on 24.08.2018.
//  Copyright © 2018 Ayşegül Koçak. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService() // Singleton
    
    override init() {
        super.init()
    }

    // Let's go and create our socket. We're creating a socket and we are pointing it to our heart to our API.
    //var socket : SocketIOClient = SocketIOClient(socketURL: URL(string: BASE_URL)!) -> Jonny's version is not working for me so I use this below
    let manager = SocketManager(socketURL: URL(string: BASE_URL)!)
    lazy var socket:SocketIOClient = manager.defaultSocket
    
    func establishConnection() {
        socket.connect() // Connect to the server.
    }
    func closeConnection() {
        socket.disconnect()
    }

    /*
     client.on('newChannel', function(name, description) {
     //Create channel
     let newChannel = new Channel({
     name: name,
     description: description,
     });
     //Save it to database
     newChannel.save(function(err, channel){
     //Send message to those connected in the room
     console.log('new channel created');
     io.emit("channelCreated", channel.name, channel.description, channel.id);
     });
     });
     
     ^^^^^^^^^^^^^^^^
     ||||||||||||||||
     
     And so the client or the the API is listening for any information coming from the client with the event
     name. And so how sockets how socket I O works is it works on events. So the server is listening for an event called new channel and then it's expecting a couple of parameters being name and description and then it creates a new channel object from that information and saves it to the database and then it gets back to the to any apps that are currently connected it emits and sends back that channel that was just created.*/
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }

    /*
     So we're listening for an event of type channel created and the data array that comes back from that
     is these three objects of type and the.
     And so we have to know the order that they're in which is named then description than the channel ID
     we cast them as strings we create a new channel object from those variables and then we create then
     we append to that new channel to our message services array of channels and then we're then we're done.
     */
    
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDesc = dataArray[1] as? String else { return }
            guard let channelId = dataArray[2] as? String else { return }
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    func addMessage(messageBody: String, userId: String, channelId: String, completion: @escaping CompletionHandler) {
        let user = UserDataService.instance
        socket.emit("newMessage", messageBody, userId, channelId, user.name, user.avatarName, user.avatarColor)
        completion(true)
    }
    
    
    
}
