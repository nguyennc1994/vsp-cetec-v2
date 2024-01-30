{% extends 'layouts/default.volt' %}
{% block content %}
<!--====================  breadcrumb area ====================-->
<div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page-banner text-center">
                    <h1>Liên hệ</h1>
                    <ul class="page-breadcrumb">
                        <li><a href="index.html">Trang chủ</a></li>
                        <li>Liên hệ</li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>
<!--====================  End of breadcrumb area  ====================-->
<div class="page-wrapper section-space--inner--120">
    <!--Contact section start-->
    <div class="conact-section">
        <div class="container">

            <div class="row section-space--bottom--50">
                <div class="col">
                    <div id="contact-map" class="contact-map">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.930335234667!2d105.81676881483233!3d21.03547328599478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab0d14762d23%3A0xd5e263c36363fa8d!2zMjg1IMSQ4buZaSBD4bqlbg!5e0!3m2!1svi!2s!4v1563341809939!5m2!1svi!2s"
                            width="100%" height="400px" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="contact-information">
                        <h3>Thông tin liên hệ</h3>
                        <ul>
                            <li>
                                <span class="icon"><i class="ion-android-map"></i></span>
                                <span class="text"><span>Trụ sở: Tầng 6 tòa nhà HKC 285 Đội Cấn, Ba Đình, Hà
                                        Nội</span></span>
                            </li>
                            <li>
                                <span class="icon"><i class="ion-android-map"></i></span>
                                <span class="text"><span>VPGD: 166 Nguyễn Xiển, Thanh Xuân, Hà Nội</span></span>
                            </li>
                            <li>
                                <span class="icon"><i class="ion-ios-telephone-outline"></i></span>
                                <span class="text"><a href="tel:02462510665">Phone: (024) 62510665</a>
                            </li>
                            <li><a href="tel:0393048288">Hotline: 039 304 8288</a></span>
                            </li>
                            <li>
                                <span class="icon"><i class="ion-ios-email-outline"></i></span>
                                <span class="text"><a href="mailto:contact@cetec.vn">Email:contact@cetec.vn</a></span>
                            </li>
                            <li>
                                <span class="text"><a href="http://www.cetec.vn/">Website: www.cetec.vn</a></span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-12">
                    <div class="contact-form">
                        <h3>Liên hệ</h3>
                        <form id="contact-form" method="post">
                            <div class="row">
                                <div class="col-md-6 col-12 section-space--bottom--20"><input name="con_name"
                                        type="text" placeholder="Họ và tên"></div>
                                <div class="col-md-6 col-12 section-space--bottom--20"><input name="con_email"
                                        type="email" placeholder="Email"></div>
                                <div class="col-12"><textarea name="con_message" placeholder="Liên hệ"></textarea></div>
                                <div class="col-12">
                                    <div id="recaptcha_1" class="recaptcha"></div>
                                </div>
                                <div class="col-12"><button type="submit">Gửi</button></div>
                            </div>
                        </form>
                        <p class="form-message"></p>
                    </div>
                </div>

                <!---- ------->
                <script src="//www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit"></script>
                <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
                <script>
                    var CaptchaCallback = function () {
                        if ($('#recaptcha_1').length) grecaptcha.render('recaptcha_1', { 'sitekey': '{{ recaptcha_site_key }}' });

                    };
                    $("#contact-form").on("submit", function (e) {
                        e.preventDefault();
                        e.stopPropagation();
                        if (!$('input[name="con_email"]', this).val().length || !$('textarea[name="con_message"]', this).val().length) {
                            e.preventDefault();
                            alert('Bạn phải nhập Email và nội dung liên hệ');
                            return;
                        }
                        var data = {};
                        var items = $(this).serializeArray().reduce(function (obj, item) {
                            obj[item.name] = item.value;
                            return obj;
                        }, {});
                        data.items = items;
                        data.recaptcha = grecaptcha.getResponse();
                        data.mail_subject = 'New contact';

                        $.ajax({
                            type: "POST",
                            url: "/form/submit/cms",
                            data: { data: JSON.stringify(data) },
                            success: function (response) {
                                if (response.success) {

                                    alert('Gửi thông tin thành công. Cám ơn bạn đã liên hệ!');
                                    $(this).trigger('reset');
                                    grecaptcha.reset();
                                } else {
                                    alert('Quá trình gửi bị lỗi. Xin bạn vui lòng thử lại!');
                                }
                            },
                            dataType: "json",
                            contentType: "application/x-www-form-urlencoded; charset=UTF-8"
                        });
                    });
                </script>
                <!--  -->
            </div>

        </div>

    </div>
    <!--Contact section end-->
</div>

{% endblock %}