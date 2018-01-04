<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>AgaHaber</title>
<meta charset="utf-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/font.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/li-scroller.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/theme.css">
<link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
<!--[if lt IE 9]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
  <header id="header">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="header_top">
          
          
        </div> 
      </div>
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="header_bottom">
          <div class="logo_area"><a href="LoginSuccess.jsp" class="logo"><img src="resources/images/logo.jpg" alt=""></a></div>
          
        </div>
      </div>
    </div>
  </header>
  <section id="navArea">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav main_nav">
          <li class="active"><a href="LoginSuccess.jsp"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
          <li><a href="#">Spor</a></li>
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Siyaset</a>
          </li>
          <li><a href="#">Sağlık</a></li>
          <li><a href="#">Ekonomi</a></li> 
          <li><a href="pages/contact.html">İletişim</a></li>
        </ul>
      </div>
    </nav>
  </section>
  <section id="newsSection">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="latest_newsarea"> <span>SON DAKİKA</span>
          <ul id="ticker01" class="news_sticker">
            <li><a href="https://www.ntv.com.tr/yasam/kivanc-tatlitug-savciliga-ifade-verdi,5_CQVoG4IUiwo4LnNHCmdw"><img src="resources/images/kivanc.jpg" alt="">Kıvanç Adliyede</a></li>
            <li><a href="https://www.ntv.com.tr/spor/romanin-en-iyi-genc-oyuncusu-cengiz-under,2TnZF0ZBh0yGVdeQMbleiA"><img src="resources/images/cengiz.jpg" alt="">Yılın genç oyuncusu</a></li>
            <li><a href="https://www.ntv.com.tr/dunya/abdde-yangin-16-yarali,PdJ9hBQavkG7DCL_JLjk-g"><img src="resources/images/abd.jpg" alt="">ABD'de yangın</a></li>
            <li><a href="https://www.ntv.com.tr/dunya/cikolata-2050-yilina-kadar-tukenebilir,1ZbYIVvsa0uUemRh6zQS1Q"><img src="resources/images/cikolata.jpg" alt="">Çikolata tükenebilir</a></li>
            <li><a href="https://www.ntv.com.tr/turkiye/chpnin-adayi-chpli-olacak,Lz4bR5lWDk60090Fb_KoMQ"><img src="resources/images/chpaday.jpg" alt="">CHP'nin adayı</a></li>
            <li><a href="https://www.ntv.com.tr/turkiye/bayrampasada-devrilen-minibus-trafigi-kilitledi,4fYPLvknbEueNrmOjMXPmg"><img src="resources/images/minibus.jpg" alt="">Devrilen Minibüs</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="sliderSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="slick_slider">
          <div class="single_iteam"> <a href="https://www.ntv.com.tr/yasam/kivanc-tatlitug-savciliga-ifade-verdi,5_CQVoG4IUiwo4LnNHCmdw"> <img src="resources/images/kivanc.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="https://www.ntv.com.tr/yasam/kivanc-tatlitug-savciliga-ifade-verdi,5_CQVoG4IUiwo4LnNHCmdw">Kıvanç Tatlıtuğ Adliyede</a></h2>
              <p>Tatlıtuğ, muhasebecisi Erdal D.'yi aramış ancak ulaşamayınca savcılığa başvurmuştu.</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="https://www.ntv.com.tr/turkiye/chpnin-adayi-chpli-olacak,Lz4bR5lWDk60090Fb_KoMQ"> <img src="resources/images/chpaday.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="https://www.ntv.com.tr/turkiye/chpnin-adayi-chpli-olacak,Lz4bR5lWDk60090Fb_KoMQ">CHP adayları</a></h2>
              <p>CHP Grup Başkanvekili Altay, adaylarının CHP'li olacağını söyledi.</p>
            </div>
          </div>
          <div class="single_iteam"> <a href="https://www.ntv.com.tr/dunya/abdde-yangin-16-yarali,PdJ9hBQavkG7DCL_JLjk-g"> <img src="resources/images/abd.jpg" alt=""></a>
            <div class="slider_article">
              <h2><a class="slider_tittle" href="https://www.ntv.com.tr/dunya/abdde-yangin-16-yarali,PdJ9hBQavkG7DCL_JLjk-g">ABD'de yangın: 16 yaralı</a></h2>
              <p>ABD'nin New York eyaletinin Bronx bölgesindeki bir binada çıkan yangında 16 kişinin yaralandığı bildirildi.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="latest_post">
          <h2><span>Son Haberler</span></h2>
          <div class="latest_post_container">
            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
            <ul class="latest_postnav">
              <li>
                <div class="media"> <a href="https://www.ntv.com.tr/yasam/kivanc-tatlitug-savciliga-ifade-verdi,5_CQVoG4IUiwo4LnNHCmdw" class="media-left"> <img alt="" src="resources/images/kivanc.jpg"> </a>
                  <div class="media-body"> <a href="https://www.ntv.com.tr/yasam/kivanc-tatlitug-savciliga-ifade-verdi,5_CQVoG4IUiwo4LnNHCmdw" class="catg_title"> Kıvanç Tatlıtuğ Adliyede</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="https://www.ntv.com.tr/turkiye/chpnin-adayi-chpli-olacak,Lz4bR5lWDk60090Fb_KoMQ" class="media-left"> <img alt="" src="resources/images/chpaday.jpg"> </a>
                  <div class="media-body"> <a href="https://www.ntv.com.tr/turkiye/chpnin-adayi-chpli-olacak,Lz4bR5lWDk60090Fb_KoMQ" class="catg_title"> CHP adayları</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="https://www.ntv.com.tr/dunya/abdde-yangin-16-yarali,PdJ9hBQavkG7DCL_JLjk-g" class="media-left"> <img alt="" src="resources/images/abd.jpg"> </a>
                  <div class="media-body"> <a href="https://www.ntv.com.tr/dunya/abdde-yangin-16-yarali,PdJ9hBQavkG7DCL_JLjk-g" class="catg_title"> ABD'de yangın: 16 yaralı</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="https://www.ntv.com.tr/turkiye/bayrampasada-devrilen-minibus-trafigi-kilitledi,4fYPLvknbEueNrmOjMXPmg" class="media-left"> <img alt="" src="resources/images/minibus.jpg"> </a>
                  <div class="media-body"> <a href="https://www.ntv.com.tr/turkiye/bayrampasada-devrilen-minibus-trafigi-kilitledi,4fYPLvknbEueNrmOjMXPmg" class="catg_title"> Devrilen Minibüs</a> </div>
                </div>
              </li>
              <li>
                <div class="media"> <a href="https://www.ntv.com.tr/dunya/cikolata-2050-yilina-kadar-tukenebilir,1ZbYIVvsa0uUemRh6zQS1Q" class="media-left"> <img alt="" src="resources/images/cikolata.jpg"> </a>
                  <div class="media-body"> <a href="https://www.ntv.com.tr/dunya/cikolata-2050-yilina-kadar-tukenebilir,1ZbYIVvsa0uUemRh6zQS1Q" class="catg_title"> Çikolata tükenebilir</a> </div>
                </div>
              </li>
            </ul>
            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8">
        <div class="left_content">
          <div class="single_post_content">
            <h2><span>Spor</span></h2>
            <div class="single_post_content_left">
              <ul class="business_catgnav  wow fadeInDown">
                <li>
                  <figure class="bsbig_fig"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="resources/images/gelisme.jpg"> <span class="overlay"></span> </a>
                    <figcaption> <a href="pages/single_page.html">Spor Haberleri</a> </figcaption>
                    <p>Sporda Haberlerinde Gelişmeler</p>
                  </figure>
                </li>
              </ul>
            </div>
            <div class="single_post_content_right">
              <ul class="spost_nav">
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/cenkliverpool.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Cenk Tosun Liverpool maçı kadrosunda</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/drogba.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Didier Drogba zirvede</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/aykut.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aykut Kocaman taktiği</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/chelsea.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Beşiktaşta Kelechi sesleri</a> </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="fashion_technology_area">
            <div class="fashion">
              <div class="single_post_content">
                <h2><span>Siyaset</span></h2>
                <ul class="business_catgnav wow fadeInDown">
                  <li>
                    <figure class="bsbig_fig"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="resources/images/featured_img2.jpg"> <span class="overlay"></span> </a>
                      <figcaption> <a href="pages/single_page.html">Siyaset Haberleri</a> </figcaption>
                      <p>Siyaset Haberleri İçerik</p>
                    </figure>
                  </li>
                </ul>
                <ul class="spost_nav">
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 1</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 2</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 3</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resourcimages/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Siyaset haber 4</a> </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="technology">
              <div class="single_post_content">
                <h2><span>Sağlık</span></h2>
                <ul class="business_catgnav">
                  <li>
                    <figure class="bsbig_fig wow fadeInDown"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="resources/images/featured_img3.jpg"> <span class="overlay"></span> </a>
                      <figcaption> <a href="pages/single_page.html">Sağlık Haberleri</a> </figcaption>
                      <p>Sağlık Haber İçerik</p>
                    </figure>
                  </li>
                </ul>
                <ul class="spost_nav">
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 1</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 2</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 3</a> </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                      <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Sağlık Haber 4</a> </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          
          <div class="single_post_content">
            <h2><span>Ekonomi</span></h2>
            <div class="single_post_content_left">
              <ul class="business_catgnav">
                <li>
                  <figure class="bsbig_fig  wow fadeInDown"> <a class="featured_img" href="pages/single_page.html"> <img src="resources/images/featured_img1.jpg" alt=""> <span class="overlay"></span> </a>
                    <figcaption> <a href="pages/single_page.html">Ekonomi Haberleri</a> </figcaption>
                    <p>Ekonomi Haber İçerik</p>
                  </figure>
                </li>
              </ul>
            </div>
            <div class="single_post_content_right">
              <ul class="spost_nav">
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 1</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 2</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img1.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 3</a> </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/post_img2.jpg"> </a>
                    <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Ekonomi Haber 4</a> </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <aside class="right_content">
          <div class="single_sidebar">
            <h2><span>Popüler Haberler</span></h2>
            <ul class="spost_nav">
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/cenkliverpool.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Cenk Tosun Liverpool maçı kadrosunda</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/abd.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> ABD'de yangın: 16 yaralı</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/chpaday.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> CHP adayları</a> </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="resources/images/aykut.jpg"> </a>
                  <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aykut Kocaman taktiği</a> </div>
                </div>
              </li>
            </ul>
          </div>
          </aside>
      </div>
    </div>
  </section>
  <footer id="footer">
    <div class="footer_top">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInLeftBig">
            <h2>Flickr Images</h2>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInDown">
            <h2>Tag</h2>
            <ul class="tag_nav">
              <li><a href="#">Games</a></li>
              <li><a href="#">Sports</a></li>
              <li><a href="#">Fashion</a></li>
              <li><a href="#">Business</a></li>
              <li><a href="#">Life &amp; Style</a></li>
              <li><a href="#">Technology</a></li>
              <li><a href="#">Photo</a></li>
              <li><a href="#">Slider</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="footer_widget wow fadeInRightBig">
            <h2>Contact</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <address>
            Perfect News,1238 S . 123 St.Suite 25 Town City 3333,USA Phone: 123-326-789 Fax: 123-546-567
            </address>
          </div>
        </div>
      </div>
    </div>
    <div class="footer_bottom">
      <p class="copyright">Copyright &copy; 2045 <a href="index.html">NewsFeed</a></p>
      <p class="developer">Developed By Wpfreeware</p>
    </div>
  </footer>
</div>
<script src="resources/assets/js/jquery.min.js"></script> 
<script src="resources/assets/js/wow.min.js"></script> 
<script src="resources/assets/js/bootstrap.min.js"></script> 
<script src="resources/assets/js/slick.min.js"></script> 
<script src="resources/assets/js/jquery.li-scroller.1.0.js"></script> 
<script src="resources/assets/js/jquery.newsTicker.min.js"></script> 
<script src="resources/assets/js/jquery.fancybox.pack.js"></script> 
<script src="resources/assets/js/custom.js"></script>
</body>
</html>