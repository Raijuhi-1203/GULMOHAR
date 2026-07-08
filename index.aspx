<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="INDEX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div style="background-color: #ed1b24; color: white; font-weight: bold; padding: 5px;">
        <marquee behavior="scroll" direction="left">

            <asp:Repeater ID="rptbinddata" runat="server" OnItemDataBound="rptbinddata_ItemDataBound" OnItemCommand="rptbinddata_ItemCommand">
                <ItemTemplate>
                    ❖
                    <asp:Label runat="server" ID="lblnotice" Text='<%# Eval("notice") %>'></asp:Label>

                </ItemTemplate>
            </asp:Repeater>

        </marquee>
    </div>

    <!-- Carousel Start -->
    <div class="header-carousel owl-carousel">
        <div class="header-carousel-item">
            <div class="header-carousel-item-img-1">
                <img src="img/1.jpg" class="img-fluid w-100" alt="Image">
            </div>
            <div class="carousel-caption">
                <%--<div class="carousel-caption-inner text-start p-3">
                        <h1 class="display-1 text-capitalize text-white mb-4 fadeInUp animate__animated" data-animation="fadeInUp" data-delay="1.3s" style="animation-delay: 1.3s;">The most prestigious Investments company in worldwide.</h1>
                        <p class="mb-5 fs-5 fadeInUp animate__animated" data-animation="fadeInUp" data-delay="1.5s" style="animation-delay: 1.5s;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                        </p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mb-4 me-4 fadeInUp animate__animated" data-animation="fadeInUp" data-delay="1.5s" style="animation-delay: 1.7s;" href="#">Apply Now</a>
                        <a class="btn btn-dark rounded-pill py-3 px-5 mb-4 fadeInUp animate__animated" data-animation="fadeInUp" data-delay="1.5s" style="animation-delay: 1.7s;" href="#">Read More</a>
                    </div>--%>
            </div>
        </div>
        <div class="header-carousel-item mx-auto">
            <div class="header-carousel-item-img-2">
                <img src="img/2.jpg" class="img-fluid w-100" alt="Image">
            </div>
            <%--<div class="carousel-caption">
                    <div class="carousel-caption-inner text-center p-3">
                        <h1 class="display-1 text-capitalize text-white mb-4">The most prestigious Investments company in worldwide.</h1>
                        <p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                        </p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mb-4 me-4" href="#">Apply Now</a>
                        <a class="btn btn-dark rounded-pill py-3 px-5 mb-4" href="#">Read More</a>
                    </div>
                </div>--%>
        </div>
        <div class="header-carousel-item">
            <div class="header-carousel-item-img-3">
                <img src="img/3.jpg" class="img-fluid w-100" alt="Image">
            </div>
            <%--<div class="carousel-caption">
                    <div class="carousel-caption-inner text-end p-3">
                        <h1 class="display-1 text-capitalize text-white mb-4">The most prestigious Investments company in worldwide.</h1>
                        <p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                        </p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mb-4 me-4" href="#">Apply Now</a>
                        <a class="btn btn-dark rounded-pill py-3 px-5 mb-4" href="#">Read More</a>
                    </div>
                </div>--%>
        </div>
        <div class="header-carousel-item">
            <div class="header-carousel-item-img-3">
                <img src="img/4.jpg" class="img-fluid w-100" alt="Image">
            </div>
            <%--<div class="carousel-caption">
        <div class="carousel-caption-inner text-end p-3">
            <h1 class="display-1 text-capitalize text-white mb-4">The most prestigious Investments company in worldwide.</h1>
            <p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
            </p>
            <a class="btn btn-primary rounded-pill py-3 px-5 mb-4 me-4" href="#">Apply Now</a>
            <a class="btn btn-dark rounded-pill py-3 px-5 mb-4" href="#">Read More</a>
        </div>
    </div>--%>
        </div>
        <div class="header-carousel-item">
            <div class="header-carousel-item-img-3">
                <img src="img/5.jpg" class="img-fluid w-100" alt="Image">
            </div>
            <%--<div class="carousel-caption">
        <div class="carousel-caption-inner text-end p-3">
            <h1 class="display-1 text-capitalize text-white mb-4">The most prestigious Investments company in worldwide.</h1>
            <p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
            </p>
            <a class="btn btn-primary rounded-pill py-3 px-5 mb-4 me-4" href="#">Apply Now</a>
            <a class="btn btn-dark rounded-pill py-3 px-5 mb-4" href="#">Read More</a>
        </div>
    </div>--%>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- About Start -->
    <div class="container-fluid about bg-light py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 col-xl-5 wow fadeInLeft" data-wow-delay="0.1s">
                    <div class="about-img">

                        <img src="img/school.jpg" class="img-fluid w-100 rounded-bottom" alt="Image">
                    </div>
                </div>
                <div class="col-lg-6 col-xl-7 wow fadeInRight" data-wow-delay="0.3s">
                    <h4 class="text-primary">About Us</h4>
                    <h1 class="display-5 mb-4">Gulmuhar Green School</h1>
                    <p class="text ps-4 mb-4">
                        Gulmuhar Green School provides a balanced education focused on academic excellence, values, and environmental consciousness, fostering holistic development in students to prepare them for a responsible global future.
                    </p>
                    <div class="row g-4 justify-content-between mb-5">
                        <div class="col-lg-6 col-xl-5">
                            <p class="text-dark"><i class="fas fa-check-circle text-primary me-1"></i>Holistic Education</p>
                            <p class="text-dark mb-0"><i class="fas fa-check-circle text-primary me-1"></i>Modern Facilities</p>
                        </div>
                        <div class="col-lg-6 col-xl-7">
                            <p class="text-dark"><i class="fas fa-check-circle text-primary me-1"></i>Skilled Faculty</p>
                            <p class="text-dark mb-0"><i class="fas fa-check-circle text-primary me-1"></i>Values and Environmental Awareness</p>
                        </div>
                    </div>
                    <div class="row g-4 justify-content-between mb-5">
                        <div class="col-xl-5"><a href="about.aspx" class="btn btn-primary rounded-pill py-3 px-5">Read More</a></div>

                    </div>
                    <div class="row g-4 text-center align-items-center justify-content-center">
                        <div class="col-sm-4">
                            <div class="bg-primary rounded p-4">
                                <div class="d-flex align-items-center justify-content-center">
                                    <span class="counter-value fs-1 fw-bold text-dark text-white" data-toggle="counter-up">1000</span>
                                    <h4 class="text-dark fs-1 mb-0 text-white" style="font-weight: 600; font-size: 25px;">+</h4>
                                </div>
                                <div class="w-100 d-flex align-items-center justify-content-center">
                                    <p class="text-white mb-0">Successful Kids</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="bg-dark rounded p-4">
                                <div class="d-flex align-items-center justify-content-center">
                                    <span class="counter-value fs-1 fw-bold text-black-50" data-toggle="counter-up">20</span>
                                    <h4 class="text-dark fs-1 mb-0" style="font-weight: 600; font-size: 25px;">+</h4>
                                </div>
                                <div class="w-100 d-flex align-items-center justify-content-center">
                                    <p class="mb-0" style="color: black;">Qualified Teachers</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="bg-primary rounded p-4">
                                <div class="d-flex align-items-center justify-content-center">
                                    <span class="counter-value fs-1 fw-bold text-dark text-white" data-toggle="counter-up">1500</span>
                                    <h4 class="text-dark fs-1 mb-0 text-white" style="font-weight: 600; font-size: 25px;">+</h4>
                                </div>
                                <div class="w-100 d-flex align-items-center justify-content-center">
                                    <p class="text-white mb-0">Happy Parents</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Services Start -->
    <div class="container-fluid service py-5">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">

                <h6 class="display-4">Our Classrooms </h6>
                <h4 class="text-primary">Our Classrooms are spacious, well-ventilated, and equipped with modern teaching aids to enhance learning.</h4>
            </div>
            <div class="row g-4 justify-content-center text-center">
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item bg-light rounded">
                        <div class="service-img">
                            <img src="img/school.png" class="img-fluid w-100 rounded-top" alt="">
                        </div>
                        <div class="service-content text-center p-4">
                            <div class="service-content-inner">
                                <a href="#" class="h4 mb-4 d-inline-flex text-start">Classrooms</a>
                                <p class="mb-4">
                                    Our classrooms are spacious, tech-enabled, and designed for interactive learning.
                                </p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="contact.aspx">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item bg-light rounded">
                        <div class="service-img">
                            <img src="img/lib.png" class="img-fluid w-100 rounded-top" alt="">
                        </div>
                        <div class="service-content text-center p-4">
                            <div class="service-content-inner">
                                <a href="#" class="h4 mb-4 d-inline-flex text-start">Library</a>
                                <p class="mb-4">
                                    Our library offers a vast collection of books and digital resources for exploration.
                                </p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="contact.aspx">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item bg-light rounded">
                        <div class="service-img">
                            <img src="img/lab.png" class="img-fluid w-100 rounded-top" alt="">
                        </div>
                        <div class="service-content text-center p-4">
                            <div class="service-content-inner">
                                <a href="#" class="h4 mb-4 d-inline-flex text-start">Laboratories</a>
                                <p class="mb-4">
                                    Our laboratories offer hands-on learning with modern, well-equipped facilities.
                                </p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="contact.aspx">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item bg-light rounded">
                        <div class="service-img">
                            <img src="img/play.png" class="img-fluid w-100 rounded-top" alt="">
                        </div>
                        <div class="service-content text-center p-4">
                            <div class="service-content-inner">
                                <a href="#" class="h4 mb-4 d-inline-flex text-start">Playground</a>
                                <p class="mb-4">
                                    Our playground promotes physical fitness, teamwork, and outdoor recreational activities.
                                </p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="contact.aspx">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <a class="btn btn-primary rounded-pill py-3 px-5 wow fadeInUp" data-wow-delay="0.1s" href="classroom.aspx">Know More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->


    <!-- Project Start -->
    <div class="container-fluid blog py-5">
        <div class="container py-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                <h6 class="display-4">School Activities</h6>
                <h4 class="text-primary">School activities include sports, arts, debates, science fairs, assemblies, competitions and cultural events. 
                </h4>
            </div>

            <div class="row g-4 justify-content-center">


                <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>


                        <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">
                                <h5 class="fs-5 mb-3">
                                    <center><%# Eval("activity_name") %></center>
                                </h5>
                                <div class="project-img">
                                    <img src='admin/<%# Eval("url") %>' class="img-fluid w-100 rounded" alt="Image">
                                    <div class="blog-plus-icon">
                                        <a href='admin/<%# Eval("url") %>' data-lightbox="blog-1" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!-- Project End -->


    <!-- Blog Start -->
    <div class="container-fluid blog pb-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                <h1 class="display-4">Our Gallery</h1>
                <h4 class="text-primary">"Explore our gallery showcasing vibrant artwork and inspiring moments, celebrating creativity and artistic expression."</h4>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                        <div class="project-img">
                            <img src="img/11.jpg" class="img-fluid w-100 rounded" alt="Image">
                            <div class="blog-plus-icon">
                                <a href="img/11.jpg" data-lightbox="blog-1" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                        <div class="project-img">
                            <img src="img/14.jpg" class="img-fluid w-100 rounded" alt="Image">
                            <div class="blog-plus-icon">
                                <a href="img/14.jpg" data-lightbox="blog-2" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                        <div class="project-img">
                            <img src="img/13.jpg" class="img-fluid w-100 rounded" alt="Image">
                            <div class="blog-plus-icon">
                                <a href="img/13.jpg" data-lightbox="blog-3" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                        <div class="project-img">
                            <img src="img/15.jpg" class="img-fluid w-100 rounded" alt="Image">
                            <div class="blog-plus-icon">
                                <a href="img/15.jpg" data-lightbox="blog-3" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                        <div class="project-img">
                            <img src="img/16.jpg" class="img-fluid w-100 rounded" alt="Image">
                            <div class="blog-plus-icon">
                                <a href="img/16.jpg" data-lightbox="blog-3" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                        <div class="project-img">
                            <img src="img/13.jpg" class="img-fluid w-100 rounded" alt="Image">
                            <div class="blog-plus-icon">
                                <a href="img/blog-3.jpg" data-lightbox="blog-3" class="btn btn-primary btn-md-square rounded-pill"><i class="fas fa-plus fa-1x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Blog End -->


    <%-- <!-- Team Start -->
        <div class="container-fluid team pb-5">
            <div class="container pb-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <h4 class="text-primary">Our Team</h4>
                    <h1 class="display-4">Our Investa Company Dedicated Team Member</h1>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded">
                            <div class="team-img">
                                <img src="img/team-1.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                                <div class="team-icon">
                                    <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fas fa-share-alt"></i></a>
                                    <div class="team-icon-share">
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-0" href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content bg-dark text-center rounded-bottom p-4">
                                <div class="team-content-inner rounded-bottom">
                                    <h4 class="text-white">Mark D. Brock</h4>
                                    <p class="text-muted mb-0">CEO & Founder</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded">
                            <div class="team-img">
                                <img src="img/team-2.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                                <div class="team-icon">
                                    <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fas fa-share-alt"></i></a>
                                    <div class="team-icon-share">
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-0" href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content bg-dark text-center rounded-bottom p-4">
                                <div class="team-content-inner rounded-bottom">
                                    <h4 class="text-white">Mark D. Brock</h4>
                                    <p class="text-muted mb-0">CEO & Founder</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded">
                            <div class="team-img">
                                <img src="img/team-3.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                                <div class="team-icon">
                                    <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fas fa-share-alt"></i></a>
                                    <div class="team-icon-share">
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-0" href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content bg-dark text-center rounded-bottom p-4">
                                <div class="team-content-inner rounded-bottom">
                                    <h4 class="text-white">Mark D. Brock</h4>
                                    <p class="text-muted mb-0">CEO & Founder</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item rounded">
                            <div class="team-img">
                                <img src="img/team-4.jpg" class="img-fluid w-100 rounded-top" alt="Image">
                                <div class="team-icon">
                                    <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fas fa-share-alt"></i></a>
                                    <div class="team-icon-share">
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-3" href="#"><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-primary btn-sm-square text-white rounded-circle mb-0" href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-content bg-dark text-center rounded-bottom p-4">
                                <div class="team-content-inner rounded-bottom">
                                    <h4 class="text-white">Mark D. Brock</h4>
                                    <p class="text-muted mb-0">CEO & Founder</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->--%>


    <!-- Testimonial Start -->
    <div class="container-fluid testimonial bg-light py-5">
        <div class="container py-5">
            <div class="row g-4 align-items-center">
                <div class="col-xl-4 wow fadeInLeft" data-wow-delay="0.1s">
                    <div class="h-100 rounded">
                        <h1 class="display-4 mb-4">Your Voice, Our Growth: </h1>
                        <h4 class="text-primary">Together Shaping Excellence at Gulmuhar Green School!</h4>
                        <p class="mb-4">We value feedback from our community to continuously improve our educational experience. Your insights help us enhance our programs and ensure a nurturing environment for all students.</p>
                        <a class="btn btn-primary rounded-pill text-white py-3 px-5" href="contact.aspx">Send Feedback<i class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
                <div class="col-xl-8">
                    <div class="testimonial-carousel owl-carousel wow fadeInUp" data-wow-delay="0.1s">
                        <div class="testimonial-item bg-white rounded p-4 wow fadeInUp" data-wow-delay="0.3s">
                            <div class="d-flex">
                                <div><i class="fas fa-quote-left fa-3x text-dark me-3"></i></div>
                                <p class="mt-4">
                                    The school is always clean and well organized. The teaching staff is diligent, considerate, and very supportive. Activities organized in school help children with physical, social, intellectual, and overall personality development.
                                </p>
                            </div>
                            <div class="d-flex justify-content-end">
                                <div class="my-auto text-end">
                                    <h5>Shalini Misra</h5>
                                </div>

                            </div>
                        </div>
                        <div class="testimonial-item bg-white rounded p-4 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="d-flex">
                                <div><i class="fas fa-quote-left fa-3x text-dark me-3"></i></div>
                                <p class="mt-4">
                                    I am fortunate to be the Principal in a great school. I learned a great deal from the Management and the staff. Quite honestly, This is the best school. We not only impart knowledge but also instill a love for learning.The best place for your child.
                                </p>
                            </div>
                            <div class="d-flex justify-content-end">
                                <div class="my-auto text-end">
                                    <h5>Ujjawal Pant</h5>
                                </div>

                            </div>
                        </div>
                        <div class="testimonial-item bg-white rounded p-4 wow fadeInUp" data-wow-delay="0.7s">
                            <div class="d-flex">
                                <div><i class="fas fa-quote-left fa-3x text-dark me-3"></i></div>
                                <p class="mt-4">
                                    Gulmuhar Green School has a highly impressive infrastructure with smart class, auditorium . The school has a neat and clean, hygienic atmosphere. The school has an excellent teaching staff where children can inculcate their talent.
                                </p>
                            </div>
                            <div class="d-flex justify-content-end">
                                <div class="my-auto text-end">
                                    <h5>Arti Misra</h5>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


    <!-- FAQ Start -->
    <div class="container-fluid faq py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                    <div class="pb-5">
                        <h4 class="text-primary">FAQs</h4>
                        <h1 class="display-4">Get the Answers to Common Questions</h1>
                    </div>
                    <div class="accordion bg-light rounded p-4" id="accordionExample">
                        <div class="accordion-item border-0 mb-4">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button text-dark fs-5 fw-bold rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseTOne">
                                    What curriculum does Gulmuhar Green School follow?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body my-2">
                                    <p>Gulmuhar Green School follows a comprehensive curriculum aligned with national standards, focusing on academic excellence and holistic development.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-0 mb-4">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed text-dark fs-5 fw-bold rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    What extracurricular activities are offered?
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                <div class="accordion-body my-2">
                                    <p>We offer a wide range of extracurricular activities, including sports, arts, music, and various clubs that cater to diverse interests and talents.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-0 mb-4">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed text-dark fs-5 fw-bold rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    What facilities are available for students?
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body my-2">
                                    <p>Our facilities include modern classrooms, well-equipped laboratories, a library, sports areas, and art and music rooms to support diverse learning experiences.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item border-0 mb-0">
                            <h2 class="accordion-header" id="headingFour">
                                <button class="accordion-button collapsed text-dark fs-5 fw-bold rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    How can parents communicate with teachers?
                                </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="accordion-body my-2">
                                    <p>Parents can communicate with teachers through scheduled meetings, email, and our parent portal, where they can access updates and feedback about their child’s progress.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.3s">
                    <div class="faq-img RotateMoveRight rounded">
                        <img src="img/feed.png" class="img-fluid rounded w-100" alt="Image">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FAQ End -->


</asp:Content>
