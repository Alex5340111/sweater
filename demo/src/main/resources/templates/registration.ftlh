<#-- @ftlvariable name="message" type="String" -->
<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Add new user:
    <div>
        ${message?ifExists}
    </div>
    <@l.login "/registration"/>
</@c.page>