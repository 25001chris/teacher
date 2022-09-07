using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MemberUtility
/// </summary>
public class MemberUtility
{
    public MyDBEntities myDBEntities;

    public MemberUtility()
    {
        myDBEntities = new MyDBEntities();
    }

    //public List<Member> getAllMembers()
    //{
    //    List<Member> member = myDBEntities.Members.ToList();
    //    return member;
    //}

    public void AddUser(Member m)
    {
        Member member = new Member()
        {
            UserName = m.UserName,
            Password = m.Password
        };
        //加入資料表
        myDBEntities.Members.Add(member);
        //確定修改
        myDBEntities.SaveChanges();
    }


}