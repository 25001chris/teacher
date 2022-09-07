<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>test11</title>

</head>
<body>
    <form id="form1" runat="server">
        <div id="app">
            <label for="username">使用者帳號</label>
            <input type="text" id="username" name="username" v-model="myData.UserName" value="" />
            <label for="password">使用者密碼</label>
            <input type="text" id="password" name="password" v-model="myData.Password" value="" />
            <button v-on:click="btnClick">送出</button>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                myData: {
                    UserName: "",
                    Password: ""
                },
                dataArr: []
            },
            mounted() {
                //this.getAllComments();
            },
            methods: {
                btnClick: function () {
                    const self = this;
                    debugger;
                    $.ajax({
                        type: "POST",
                        url: "WebService.asmx/AddUser",
                        data: JSON.stringify(self.myData),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            console.log(r);
                            //self.getAllComments();
                        },
                        error: function (e) {
                            console.log(e);
                            //self.getAllComments();
                        },
                    });
                }
            }
        });
    </script>
</body>
</html>
