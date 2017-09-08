robot.hear(/delete all the files/, function(msg) {
 
    msg.reply('Are you really sure???');
    
    //Start a dialog with the user that sent this message. 
    var dialog = switchBoard.startDialog(msg);
    
    //Provide choices for the next step, wait for the user. 
    dialog.addChoice(/yes/, function(msg2){/*Do some stuff for the yes option*/}
    dialog.addChoice( /no/, function(msg2){/*Do some stuff for the no option*/ }
 
    //The dialog will expire after 30 secods.   
