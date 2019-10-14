<%@ Page Title="Amanpreet Photography | Home" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content runat="server" ID="Home" ContentPlaceHolderID="HomeContent">
    <style>
        #colorlib-main {
            margin-top:100px;

        }
.col-md-4.ftco-animate.fadeInUp.ftco-animated {
    padding: 30px;
}

#colorlib-main {
    margin-top: 45px;
}
    </style>
     <div id="colorlib-main">
              <section class="ftco-section-2">
                  <div class="photograhy">
                      <div class="row no-gutters">
                          <asp:Repeater ID="rptrHomeImages" runat="server">
                              <HeaderTemplate></HeaderTemplate>
                              <ItemTemplate>
                                  <div class="col-md-4 ftco-animate">
                                      <a href='image/Banner/<%# Eval("BannerSize") %><%# Eval("BannerName") %>' class="photography-entry img image-popup d-flex justify-content-center align-items-center" style="background-image: url('Image/Banner/<%# Eval("BannerSize") %><%# Eval("BannerName") %>');">
                                          <div class="overlay"></div>
                                          <div class="text text-center">
                                             <%-- <h3>Work 01</h3>
                                              <span class="tag">Model</span>--%>
                                          </div>
                                      </a>
                                  </div>
                              </ItemTemplate>
                              <FooterTemplate></FooterTemplate>

                          </asp:Repeater>

                      </div>
                  </div>
              </section>

          </div>
</asp:Content>