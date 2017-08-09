$(function () {
    var pCategory;
    $('.dropdown-menu li a').on('click', function () {
        pCategory = $(this).text();
        $('.category').val(pCategory);
    });

    $('a[type=submit]').on('click', function () {
    var pName = $('input[name=pName]').val();
    var pText = $('textarea[name=pText]').val();
    var category = $('.category').val();
    var pGMoney = $('input[name=pGMoney]').val();
    var pSDate = $('input[name=pSDate]').val();
    var pEDate = $('input[name=pEDate]').val();
        $('form').submit();
    });

});
