$(function () {
    var pCategory;
    $('.dropdown-menu li a').on('click', function () {
        pCategory = $(this).text();
    });

    $('a[type=submit]').on('click', function () {
        var pTitle = $('input[name=pName]').val();
        var pText = $('textarea[name=pText]').val();
        var pImg = $('input[name=pImage]').val();
        var pVideo = $('input[name=pVideo]').val();
        var pGMoney = $('input[name=pGMoney]').val();
        var pSDate = $('input[name=pSDate]').val();
        var pEDate = $('input[name=pEDate]').val();
        window.loation.href="/Floracion/pcreate?pTitle="+pTitle+",pText="+pText+",pImg="+pImg+",pVideo="+pVideo+",pCategory="+pCategory+",pGMoney="+pGMoney+",pSDate="+pSDate+",pEDate="+pEDate;
    });

});
