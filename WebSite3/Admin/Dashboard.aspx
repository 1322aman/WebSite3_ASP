<%@ Page Title="Dashboard | Amanpreet Photography" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
     <!--sidebar-menu-->

<!--sidebar-menu-->
    <!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
    <li runat="server" class="bg_lb" id="pg1"><a href="Dashboard.aspx"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li runat="server" class="bg_dg" id="pg2"> <a href="HomeImages.aspx"><i class="icon icon-picture"></i> <span>Home Images</span></a> </li>
    <li runat="server" class="bg_ly" id="pg3"> <a href="Categories.aspx"><i class="icon icon-folder-close"></i> <span>Categories</span></a> </li>
    <li runat="server" class="bg_lo" id="pg4"> <a href="Portfolio.aspx"><i class="icon icon-picture"></i> <span>Portfolio</span></a> </li>
    <li runat="server" class="bg_ls" id="pg5"> <a href="Video.aspx"><i class="icon icon-film"></i> <span>Video</span></a> </li>

      </ul>
    </div>
<!--End-Action boxes-->    

<!--Chart-box-->    
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Site Analytics</h5>
        </div>
        <div class="widget-content" >
          <div class="row-fluid">
           
            <div class="span12">
              <ul class="site-stats">
                <li class="bg_dg"><a href="HomeImages.aspx" style="color:white"><i class="icon-picture"></i> <strong>
                    <asp:Label ID="lblBanner" runat="server" Text=""></asp:Label></strong> <small>Home Images</small></a></li>
                <li class="bg_ly"><a href="Categories.aspx" style="color:white"><i class="icon-picture"></i> <strong>
                    <asp:Label ID="lblCategory" runat="server" Text=""></asp:Label></strong> <small>Categories</small></a></li>
                <li class="bg_lo"><a href="Portfolio.aspx" style="color:white"><i class="icon-th-list"></i> <strong>
                    <asp:Label ID="lblPortfolio" runat="server" Text=""></asp:Label></strong> <small>Portfolio</small></a></li>
                <li class="bg_ls"><a href="Video.aspx" style="color:white"><i class="icon-group"></i> <strong>
                    <asp:Label ID="lblVideo" runat="server" Text=""></asp:Label></strong> <small>Video</small></a></li>
                 
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--End-Chart-box--> 
    <hr/>
   
  </div>
</div>

<!--end-main-container-part-->

</asp:Content>

