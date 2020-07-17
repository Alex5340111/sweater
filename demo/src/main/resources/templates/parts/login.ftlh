<!--form LOGIN or REGISTRATION dependency of  the path -->
<#macro login path isRegisterForm>
    <#if isRegisterForm>Page of the registration<#else>Page of the login</#if>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name </label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control"/>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary"><#if isRegisterForm>Crete<#else>Sign In</#if></button>
            </div>
        </div>
        <#if !isRegisterForm><a href="registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <div>
        <form method="post" action="/logout">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Sign Out"/>
        </form>
    </div>
</#macro>