<%@ Page Title="Categories | Amanpreet Photography" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Admin_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" Runat="Server">
     <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="Dashboard.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Category</a></div>
    <h1>Categories</h1>
  </div>
         <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon icon-folder-close"></i> </span>
            <h5>Add Category</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate" novalidate="novalidate">
              
              <div class="control-group">
                <label class="control-label">Category:</label>
                <div class="controls">
                    <asp:TextBox ID="txtCategory" placeholder="Category.." runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="form-actions">
                  <asp:LinkButton ID="btnAddCategory" Class="btn btn-success" runat="server" OnClick="btnAddCategory_Click"><span class="icon icon-plus-sign"></span> Add Category</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>
           <asp:Repeater ID="rptrCategory" runat="server" OnItemCommand="rptrCategory_ItemCommand">
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon icon-folder-close"></i> </span>
            <h5>Categories</h5>
               <asp:LinkButton Style="float:right;height:25px;line-height: 1.8;"  OnClientClick="return confirm('Are you sure? You want to delete all Categories!');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span style="padding: 9px 10px 7px 0px;" class="icon icon-trash"></span> Delete All</asp:LinkButton>
          </div>
          <div class="widget-content nopadding">
              
               <br />
            
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                 
                  <th>Sr.No.</th>
                  <th>Category</th>
                 
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                      <td><%# Eval("CategoryId") %></td>
                  <td><%# Eval("CategoryName") %></td>
                     
                  <td class="Center">
                      <asp:LinkButton ID="lnkedit" CssClass="btn btn-info"  CommandName="edit"  CommandArgument='<%# Eval("categoryId") %>' runat="server"><span class="icon icon-edit"></span></asp:LinkButton>
                     <asp:LinkButton ID="lnkdelete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure? You want delete!');" CommandName="del" CommandArgument='<%# Eval("categoryId") %>' runat="server"><span class="icon icon-remove"></span></asp:LinkButton>
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


         <asp:Panel ID="pnlCategory" runat="server" Visible="false">
        <div id="myModal" class="modal hide" style="display:block !important" >
              <div class="modal-header">
                <%--<button data-dismiss="modal" class="close" type="button">×</button>--%>
                  <asp:LinkButton ID="btnClose" class="close" runat="server" OnClick="btnCancel_Click">×</asp:LinkButton>
                <h3><span class="icon icon-edit"></span> EDIT</h3>
              </div>
              <div class="modal-body">
                <p>
                    <div class="form-horizontal" id="basic_validate">
              
                <div class="">
                <label class="control-label"> Category :</label>
                    <asp:Label ID="lblCategoryId" runat="server" Visible="False"></asp:Label>
                <div class="controls">
                   <asp:TextBox ID="txtCategoryEdit" placeholder="Category.." runat="server"></asp:TextBox>
                </div>

              </div>
              
              <div class="form-actions">
                  <asp:LinkButton ID="btnUpdate" Class="btn btn-success" runat="server" OnClick="btnUpdate_Click"><span class="icon icon-save"></span> Update</asp:LinkButton>
                  <asp:LinkButton ID="btnCancel" Class="btn btn-inverse" runat="server" OnClick="btnCancel_Click"><span class="icon icon-remove"></span> Cancel</asp:LinkButton>
                  &nbsp;<asp:Label ID="lblmsgup" runat="server" Text="" ForeColor="Red"></asp:Label>
                
              </div>
            </div>
                    
                    <p>
                    </p>
                    
                    <p>
                    </p>
                    
                    <p>
                    </p>
                    
                    <p>
                    </p>
                    
                </p>
              </div>
            </div>
            <div class="modal-backdrop  in"></div>
            </asp:Panel>

    <asp:label id="lblCategoryID1" runat="server" text="" visible="false"></asp:label>
          </div>
    
</asp:Content>

