loaded.then(() => {
    $('#sidebar-button').click(() => $('body').toggleClass('sidebar-open sidebar-closed'));
});