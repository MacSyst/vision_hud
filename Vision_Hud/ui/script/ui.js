$(function() {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
            $('.player-id').text('' + item.id + '')
            $('.player-count').text('' + item.playersonline + '')
    })
})