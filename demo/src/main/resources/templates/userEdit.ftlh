<#import "parts/common.ftlh" as c>

<@c.page>
    User editor
    <form method="post" action="/user">
        <input type="text" value="${user.username}" name="username">
        <#list roles as role>
            <div>
                <label>
                    <input name="${role}" type="checkbox" ${user.roles?seq_contains(role)?string("checked","")}>${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Save</button>
    </form>
</@c.page>
<!--TODO:-->