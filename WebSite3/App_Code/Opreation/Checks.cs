using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Checks
/// </summary>
public class Checks
{

    public static bool Empty(string value)
    {
        return value.Equals("");
    }

    public static bool checkNumber(string num)
    {
        try
        {
            int.Parse(num);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }
}