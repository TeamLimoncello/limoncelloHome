loaded.then(() => {
    $('#sidebar-button').click(() => $('body').toggleClass('sidebar-closed'));
});