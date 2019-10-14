<%@ Page Title="Video | Amanpreet Photography" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Admin_Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
      <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Video</a></div>
    <h1>Video</h1>
  </div>
         <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-paper-clip"></i> </span>
            <h5>Add Video</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              
              <div class="control-group">
                <label class="control-label">Video Code :</label>
                <div class="controls">
                    <asp:TextBox ID="txtsrc" placeholder="Video Code.." runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="form-actions">
                  <asp:LinkButton ID="lnkvideo" Class="btn btn-success" runat="server" OnClick="lnkvideo_Click"><span class="icon icon-plus-sign"></span> Add Video</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>
           <asp:Repeater ID="rptrvideo" runat="server" OnItemCommand="rptrvideo_ItemCommand">
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon icon-film"></i> </span>
            <h5>Video</h5>
               <asp:LinkButton Style="float:right;height:25px;line-height: 1.8;"  OnClientClick="return confirm('Are you sure? You want to delete all Videos!');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span style="padding: 9px 10px 7px 0px;" class="icon icon-trash"></span> Delete All</asp:LinkButton>
          </div>
          <div class="widget-content nopadding">
              
               <br />
            
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                 
                  <th>Sr.No.</th>
                  <th>Video Source</th>
                 
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                      <td><%# Eval("VideoYoutubeID") %></td>
                  <td><%# Eval("VideoSource") %></td>
                     
                  <td class="Center">
                     <asp:LinkButton ID="lnkdelete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure? You want delete!');" CommandName="del" CommandArgument='<%# Eval("VideoYoutubeID") %>' runat="server"><span class="icon icon-remove"></span></asp:LinkButton>
                  </td>
                      
                </tr>
            </ItemTemplate>
            <FooterTemplate>
             </tbody>
            </table>
          </div>
        </div>
                </div>
                </div>
                </div>
            </FooterTemplate>

        </asp:Repeater>
          </div>
</asp:Content>

