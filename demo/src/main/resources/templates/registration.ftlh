<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Registration page
    ${messageIfExists !""}
    <p>Add new user:</p>
    <@l.login "/registration"/>
    <@l.logout/>


</@c.page>