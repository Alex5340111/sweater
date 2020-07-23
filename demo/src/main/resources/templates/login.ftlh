<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    ${message?if_exists}
    <@l.login path="/login " isRegisterForm=false />
</@c.page>