loaded.then(() => {
    $('#sidebarCollapse').click(() => $('body').toggleClass('sidebar-closed'));
});