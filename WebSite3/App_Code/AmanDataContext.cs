﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class BannerInfo
{
    public int BannerID { get; set; }
    public string BannerName { get; set; }
    public string BannerExtension { get; set; }
    public Nullable<int> BannerSize { get; set; }
    public string BannerType { get; set; }
}

public partial class CategoryInfo
{
    public CategoryInfo()
    {
        this.ImageInfoes = new HashSet<ImageInfo>();
    }

    public int categoryId { get; set; }
    public string CategoryName { get; set; }

    public virtual ICollection<ImageInfo> ImageInfoes { get; set; }
}

public partial class ImageInfo
{
    public int ImageID { get; set; }
    public string ImageName { get; set; }
    public string ImageExtension { get; set; }
    public Nullable<int> ImageSize { get; set; }
    public string ImageType { get; set; }
    public string Imagecaption { get; set; }
    public string ImageDescription { get; set; }
    public Nullable<int> CategoryId { get; set; }

    public virtual CategoryInfo CategoryInfo { get; set; }
}

public partial class LoginInfo
{
    public int UserID { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    public string EmailID { get; set; }
    public string SecurityQuestion { get; set; }
    public string SecurityAnswer { get; set; }
}

public partial class videoYoutube
{
    public int VideoYoutubeID { get; set; }
    public string VideoSource { get; set; }
}
