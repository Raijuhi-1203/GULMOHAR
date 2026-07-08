<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Header Start -->
    <div class="container-fluid bg-breadcrumb">
        <div class="bg-breadcrumb-single"></div>
        <div class="container text-center py-5" style="max-width: 900px;">
            <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Contact Us</h4>
        </div>
    </div>
    <!-- Header End -->

        <!-- Contact Start -->
        <div class="container-fluid contact bg-light py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                        <div class="contact-item">
                            <div class="pb-5">
                                <h4 class="text-primary">Contact Us</h4>
                                <h1 class="display-4 mb-4">Get In Touch With Us</h1>
                                <p class="mb-0">For inquiries, suggestions, or assistance, please contact us at our school office. Visit our school website for more information. We look forward to hearing from you!</p>
                            </div>
                            <div class="d-flex align-items-center mb-4">
                                <div class="bg-primary btn-lg-square rounded-circle p-4"><i class="fa fa-home text-white"></i></div>
                                <div class="ms-4">
                                    <h4>Addresses</h4>
                                    <p class="mb-0">Omaxe City, Lucknow, Uttar Pradesh 226014</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-4">
                                <div class="bg-primary btn-lg-square rounded-circle p-2"><i class="fa fa-phone-alt text-white"></i></div>
                                <div class="ms-4">
                                    <h4>Mobile</h4>
                                    <p class="mb-0">+91-8004950802</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-4">
                                <div class="bg-primary btn-lg-square rounded-circle p-2"><i class="fa fa-envelope-open text-white"></i></div>
                                <div class="ms-4">
                                    <h4>Email</h4>
                                    <p class="mb-0">gulmuhargreenschool@gmail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.3s">
                        <div>
                            <div class="row g-3">
                                <div class="col-lg-12 col-xl-6">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" type="text" class="form-control" id="name" placeholder="Your Name"></asp:TextBox>
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-xl-6">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" type="email" class="form-control" id="email" placeholder="Your Email"></asp:TextBox>
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-xl-12">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" type="phone" class="form-control" id="phone" placeholder="Phone"></asp:TextBox>
                                        <label for="phone">Your Phone</label>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" type="text" class="form-control" id="subject" placeholder="Subject"></asp:TextBox>
                                        <label for="subject">Subject</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox runat="server" class="form-control" placeholder="Leave a message here" id="message" style="height: 160px"></asp:TextBox>
                                        <label for="message">Message</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button id="btnsave" runat="server" class="btn btn-primary w-100 py-3" onserverclick="btnsave_ServerClick">Send Message</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded h-100">
                            <iframe class="rounded-top w-100" 
                            style="height: 500px; margin-bottom: -6px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57002.80178803541!2d80.88222454191185!3d26.754741888997305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfbc5e914c6f7%3A0x7ae694cbe488ba3d!2sGulmuhar%20Green%20School!5e0!3m2!1sen!2sin!4v1727248470689!5m2!1sen!2sin" 
                            loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            <div class="d-flex align-items-center justify-content-center bg-primary rounded-bottom p-4">
                                <div class="d-flex">
                                    <a class="btn btn-dark btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-dark btn-lg-square rounded-circle mx-2" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-dark btn-lg-square rounded-circle mx-2" href="#"><i class="fab fa-instagram"></i></a>
                                    <a class="btn btn-dark btn-lg-square rounded-circle mx-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
    </asp:Content>