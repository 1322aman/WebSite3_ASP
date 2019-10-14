<%@ Page Title="Change Password | Amanpreet Photography" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePswd.aspx.cs" Inherits="Admin_ChangePswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
      <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="ChangePswd.aspx" class="current">Change Password</a></div>
    <h1>Change Password</h1>
  </div>
        <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-key"></i> </span>
            <h5>Change Password</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              <div class="control-group">
                <label class="control-label">Old Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtoldpswd" placeholder="Old Password.." runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">New Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtnewpswd" placeholder="New Password.." runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Confirm Password:</label>
                <div class="controls">
                    <asp:TextBox ID="txtcnfmpswd" placeholder="Confirm Password.." runat="server" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              
              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddchnge" Class="btn btn-success" runat="server" OnClick="lnkaddchnge_Click"><span class="icon icon-key"></span> Change Password</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>
        </div>
</asp:Content>

