<%@ Page Title="Videos | Amanpreet Photography" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="video" runat="server" ContentPlaceHolderID="HomeContent">
    <style>
        .aos-init.aos-animate {
    margin-bottom: -40px;
}
    </style>
    <div class=""  data-aos="fade">
    <div class="container-fluid">
      
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="row mb-5 site-section">
            <div class="col-12 ">
              <h2 class="site-section-heading text-center">Video Gallery</h2>
            </div>
          </div>
             <div class="row mb-5">
                 
    <asp:Repeater ID="rptrvid" runat="server">
                 <ItemTemplate>
                    <div class="col-sm-6 col-xs-12 col-lg-6">
				     <iframe width="100%" height="300"  src="https://www.youtube.com/embed/<%# Eval("VideoSource") %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                
                    </div>
                 </ItemTemplate>
               </asp:Repeater>
                 </div>
                
            </div>
          </div>
        </div>
        </div>
</asp:Content>