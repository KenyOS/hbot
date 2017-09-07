module.exports = function (robot) {

    var switchBoard = new Conversation(robot);

    robot.respond(/clean the house/, function (msg) {
        var dialog = switchBoard.startDialog(msg);

        msg.reply('Sure, where should I start? Kitchen or Bathroom');
        dialog.addChoice(/kitchen/i, function (msg2) {
            msg2.reply('On it boss!');
        });
        dialog.addChoice(/bathroom/i, function (msg2) {
            msg.reply('Do I really have to?');
            dialog.addChoice(/yes/, function (msg3) {
                msg3.reply('Fine, Mom!');
            })
        });
    });
