<%@ Page Title="portfolio | Amanpreet Photography" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Admin_Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
      <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Portfolio</a></div>
    <h1>Portfolio</h1>
  </div>
         <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon icon-picture"></i> </span>
            <h5>Add Portfolio</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              
                <div class="control-group">
                    <label class="control-label">Category :</label>
                    <div class="controls">
                        <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
                    </div>
                </div>

                 <div class="control-group">
                    <label class="control-label">Caption :</label>
                    <div class="controls">
                        <asp:TextBox ID="txtCaption" placeholder="Caption.." runat="server"></asp:TextBox>
                    </div>
                </div>

                  <div class="control-group">
                    <label class="control-label">Image Descriptions :</label>
                    <div class="controls">
                        <asp:TextBox ID="txtdescription" placeholder="Description.." runat="server" TextMode="MultiLine" Height="80px"></asp:TextBox>
                    </div>
                </div>

                <div class="control-group">
                <label class="control-label"> Images :</label>
                <div class="controls">
                    <asp:FileUpload ID="fufImage"  runat="server" AllowMultiple="True" />
                  
                </div>

              </div>
              
              
              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddImage" Class="btn btn-success" runat="server" OnClick="lnkaddImage_Click"><span class="icon icon-plus-sign"></span> Add Portfolio</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>

        <asp:Repeater ID="rptrGallery" runat="server" OnItemCommand="rptrGallery_ItemCommand">
            <HeaderTemplate>
                <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Portfolio</h5>
               <%--<asp:LinkButton Style="float:right;height:25px;line-height: 1.8;"  OnClientClick="return confirm('Are you sure? You want to delete all Images!');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span style="padding: 9px 10px 7px 0px;" class="icon icon-trash"></span> Delete All</asp:LinkButton>--%>
          </div>
            
               <br />
              <hr />
          <div class="widget-content">
            <ul class="thumbnails">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="span2"> <a> <img src="../Image/Gallery/<%# Eval("ImageSize") %><%# Eval("ImageName") %>" alt="" > </a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="actions">
                    <asp:LinkButton ID="lnkdel" OnClientClick="return confirm('Are you sure you want delete');" CommandName="del" CommandArgument='<%# Eval("ImageID") %>' runat="server"><i class="icon-trash"></i></asp:LinkButton></div>
              </li>
            </ItemTemplate>
            <FooterTemplate>
              </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
      </FooterTemplate>

        </asp:Repeater>

        </div>
</asp:Content>

