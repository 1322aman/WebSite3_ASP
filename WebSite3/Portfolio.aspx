<%@ Page Title="Portfolio | Amanpreet Photography" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="port" runat="server" ContentPlaceHolderID="HomeContent">
    <style>
        .lg-sub-html h4 {
            color:white;
        }
    </style>
   
    <div class="site-section"  data-aos="fade">
    <div class="container-fluid">
      
      <div class="row justify-content-center">
        
        <div class="col-md-7">
          <div class="row mb-5">
            <div class="col-12 ">
              <h2 id="Myheading" runat="server" class="site-section-heading text-center">Portfolio</h2>
            </div>
          </div>

        </div>
    
      </div>
      <div class="row" id="lightgallery">
          <asp:Repeater ID="rptPortfolio" runat="server">
              <ItemTemplate>
                  <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 item" data-aos="fade" data-src='Image/Gallery/<%# Eval("ImageSize") %><%# Eval("ImageName") %>' data-sub-html='<h4><%# Eval("ImageCaption") %></h4><p><%# Eval("ImageDescription") %></p>'>
                      <a href="#">
                          <img style="width:224px; height:149px;" src='Image/Gallery/<%# Eval("ImageSize") %><%# Eval("ImageName") %>' alt="IMage" class="img-fluid"/>
                     </a>
                  </div>
              </ItemTemplate>
          </asp:Repeater>
        
      </div>
    </div>
  </div>
</asp:Content>