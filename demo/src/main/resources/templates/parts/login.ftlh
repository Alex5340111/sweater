<<<<<<< HEAD
=======
<!--form LOGIN or REGISTRATION dependency of  the path -->
>>>>>>> caf852ece095c7d467809220c400bf0b96635fc8
<#macro login path>
    <form action="${path}" method="post">
        <div><label> User Name : <input type="text" name="username"/> </label></div>
        <div><label> Password: <input type="password" name="password"/> </label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
<<<<<<< HEAD
        <div><input type="submit" value="   Sign In"/></div>
    </form>
</#macro>

<#macro logout >
    <div>
        <form method="get" action="/login">
=======
        <div><input type="submit" value="Sign In"/></div>
    </form>
</#macro>

<#macro logout>
    <div>
        <form method="post" action="/logout">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
>>>>>>> caf852ece095c7d467809220c400bf0b96635fc8
            <input type="submit" value="Sign Out"/>
        </form>
    </div>
</#macro>