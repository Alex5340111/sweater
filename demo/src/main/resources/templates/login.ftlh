<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>


<@c.page>
<@l.login "/login"/>
<p>Login page</p>
<a href="/registration">Add new user!</a>
</@c.page>