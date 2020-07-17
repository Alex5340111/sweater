<#-- @ftlvariable name="message" type="String" -->
<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        ${message?ifExists}
    </div>
    <@l.login "/registration" true/>
</@c.page>