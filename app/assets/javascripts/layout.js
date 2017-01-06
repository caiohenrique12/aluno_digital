/*
 LAYOUT PACTO V1.0
 AUTOR: THIAGO SILVA
 DATA: 04/10/2016

 JAVASCRIPT/JQUERY
 */

var data = new Date();

// CHECANDO PRE CARREGAMENTO DA PAGINA
$(function () {
    // ATIVANDO TODOS OS TOOLTIPS DO BOOTSTRAP
    $('[data-toggle="tooltip"]').tooltip();

    //ALINHAR LOGIN NO CENTRO DA TELA
    alinhaLogin();

    //REPOSICIONAR LOGIN NO RESIZE DA PAGINA
    $(window).resize(function () {

        //ALINHAR LOGIN NO CENTRO DA TELA
        alinhaLogin();
    });

    // NAVEGAÇÃO
    $('.sidebar > ul > li').each(function () {

        $(this).find('a').click(function () {
            if ($(this).attr('href') != '/') {
                $('.sidebar > ul > li').removeClass('active');
                $(this).parent().addClass('active');
                $('.breadcrumb').removeClass('hide');
                var pagina = $(this).attr('href');
                var tipo = $(this).attr('role');
                var titulo = $(this).text()

                $('.breadcrumb').find('li:eq(0)').removeClass('hide');
                $('.breadcrumb').find('li:eq(1)').removeClass('hide').find('a').text(titulo);
                // $('.breadcrumb').find('li:eq(1)').find('i').attr('class',icone);
                $('#paginas').load('paginas/' + pagina + '?' + data.getTime(), function () {
                    loadPagina();
                });
            }
        });
    });

    loadPagina();
});

// CARREGANDO PAGINAS EXTRAS
function loadPagina() {
    // TODOS OS BOTOES
    $('[role="link"]').click(function () {
        var pagina = $(this).attr('href');
        var titulo = $(this).text();
        $('.breadcrumb').removeClass('hide');
        $('.breadcrumb').find('li:eq(0)').removeClass('hide');
        $('.breadcrumb').find('li:eq(1)').removeClass('hide').find('a').text(titulo);
        $('#paginas').load('paginas/' + pagina + '?' + data.getTime(), function () {
            loadPagina();
        });
    });

    //$('.breadcrumb').find('li:eq(2)').removeClass('hide');
}

//FUNCAO PAR ALINHAR LIGIN
function alinhaLogin() {

    //VERIFICANDO SE A CAIXA DE LOGIN EXISTE
    if ($('.main-login').length != 0) {

        //CAPTURANDO ALTURA E LARGURA DO LOGIN
        var altura = ($('.main-login').height() / 2);
        var largura = ($('.main-login').width() / 2);

        //ALINHANDO CAIXA DE LOGIN DE ACORDO COM LARGURA E ALTURA DA PAGINA
        $('.main-login').css({
            top: '50%',
            left: '50%',
            position: 'absolute',
            margin: '' + (-altura) + 'px auto auto ' + (-largura) + 'px'
        });
    }
}

