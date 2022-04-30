document.addEventListener("turbolinks:load", function() {

    var notification = document.querySelector('.global-notification');

    if (notification) {
        window.setTimeout(function() {
            notification.style.display ="none";
        }, 4000);
    }
});

// ne marche pas pour effacer les notifs apres 4 secondes, sans doute a cause du query selector qui ne trouve pas la notif
// voir alert, notice etc
