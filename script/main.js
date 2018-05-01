loaded.then(() => {
    $('#sidebar-button').click(() => $(document.body).toggleClass('sidebar-open sidebar-closed'));

    $(document.body).on('click', '.close-sidebar', () => {
        $(document.body).addClass('sidebar-closed').removeClass('sidebar-open');
        return false;
    });
});
