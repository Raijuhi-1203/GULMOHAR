<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Header Start -->
    <div class="container-fluid bg-breadcrumb">
        <div class="bg-breadcrumb-single"></div>
        <div class="container text-center py-5" style="max-width: 900px;">
            <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Our Video Gallery</h4>
        </div>
    </div>
    <!-- Header End -->

    <!-- Blog Start -->
    <div class="container-fluid blog py-5 pb-5">
        <div class="container py-5 pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                <h1 class="display-4">Our Video Gallery</h1>
                <h4 class="text-primary">"Explore our video gallery showcasing vibrant artwork and inspiring moments, celebrating creativity and artistic expression."</h4>
            </div>
            <div class="row g-4 justify-content-center">

                <asp:Repeater ID="rptbinddata" runat="server" OnItemDataBound="rptbinddata_ItemDataBound" OnItemCommand="rptbinddata_ItemCommand">
                    <ItemTemplate>

                        <div class="col-md-6 col-lg-6 col-xl-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="blog-item bg-light rounded p-4" style="background-image: url(img/bg.png);">

                                <div class="project-img">
                                    <iframe width="100%" height="350" src='https://www.youtube.com/embed/<%# Eval("url") %>'></iframe>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>

</asp:Content>

