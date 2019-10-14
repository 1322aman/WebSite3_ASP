<%@ Page Title="About | Amanpreet Photography" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="AboutAndContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        .row.mb-5.site-section {
    margin-bottom: 0px !important;
}

        .site-section.aos-init.aos-animate {
    padding-bottom: 0;
    margin-bottom: -80px;
}

        .myBtn {
            border-radius:0 !important;
            border:none !important;
            background-color:#999 !important;
        }
            .myBtn:hover {
                background-color:#111 !important;
            }
    </style>
</asp:Content>
<asp:Content ID="About" runat="server" ContentPlaceHolderID="HomeContent">
    <div class=""  data-aos="fade">
    <div class="container-fluid">
      
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="row mb-5 site-section">
            <div class="col-12 ">
              <h2 class="site-section-heading text-center">About</h2>
            </div>
          </div>

          <div class="row mb-5">
            <div class="col-md-7">
              <img src="Image/photographer.png" alt="Images" class="img-fluid">
            </div>
            <div class="col-md-4 ml-auto">
              <h3>Amanpreet Singh</h3>
              <p>
                  is an New Zealand based freelance photographer, specialized in Outdoor, Adventure (Landscape) and Lifestyle Photography. His work as a photo creator and storyteller fuels his passion which is inspired by nature.
He successfully collaborated with diverse clientele and produced video ads for lifestyle products and industrial company brands. He holds a reputation of being highly professional and has his worked featured in eminent Art Exhibition; his work reflects soul of the subject.
              </p>

                <br />
                 <p><em>
                  “ I believe photographs are the bridge between what’s real and how are mind perceives it to be. For me nature has been the most arduous and humbling teacher. As an environmentalist I would like to see our planet flourish so that every corner I travel to, is full of life.”
              </em></p>
            </div>
             
          </div>

        <%-- This Can be used for Clients--%>
         <%-- <div class="row site-section">
            <div class="col-md-6 col-lg-6 col-xl-4 text-center mb-5">
              <img src="images/person_1.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
              <h2 class="text-black font-weight-light mb-4">Jean Smith</h2>
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
              <p>
                <a href="#" class="pl-0 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
              </p>
            </div>
            <div class="col-md-6 col-lg-6 col-xl-4 text-center mb-5">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
              <h2 class="text-black font-weight-light mb-4">Claire Smith</h2>
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
              <p>
                <a href="#" class="pl-0 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
              </p>
            </div>
            <div class="col-md-6 col-lg-6 col-xl-4 text-center mb-5">
              <img src="images/person_4.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
              <h2 class="text-black font-weight-light mb-4">John Smith</h2>
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
              <p>
                <a href="#" class="pl-0 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
              </p>
            </div>
          </div>--%>


        </div>
    
      </div>
    </div>
  </div>

   <%-- Contact Us Begin--%>

  

</asp:Content>
