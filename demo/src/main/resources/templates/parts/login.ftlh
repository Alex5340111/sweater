<!--form LOGIN or REGISTRATION dependency of  the path -->
<#macro login path isRegisterForm>
    <!--Log: Page of the login-->
    <#if isRegisterForm>Page of the registration<#else>Page of the login</#if>

    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name </label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control" placeholder="User name"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <!--mail-->
        <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Email </label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="some@some.com"/>
            </div>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Crete<#else>Sign In</#if></button>

        <#if !isRegisterForm><a href="registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <div>
        <form method="post" action="/logout">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary">Sign Out</button>
        </form>
    </div>
</#macro>