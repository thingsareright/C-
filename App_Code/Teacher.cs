using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Teacher
{
    public Teacher()
    {
       
    }
    //
    // TODO: 在此处添加构造函数逻辑
    //
    private string Tid;
    private string Tname;

    public string Tid1
    {
        get
        {
            return Tid;
        }

        set
        {
            Tid = value;
        }
    }

    public string Tname1
    {
        get
        {
            return Tname;
        }

        set
        {
            Tname = value;
        }
    }
}