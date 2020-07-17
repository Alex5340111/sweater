<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>

    <!--       filter               -->
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input class="form-control mr-3" type="text" name="filter" value="${filter?ifExists}">
                <button type="submit" class="btn btn-primary" >Search</button>
            </form>
        </div>
    </div>

    <!--       message put message       -->
    <div>
        <form method="post" action="/main" enctype="multipart/form-data"><!--@PostMapping("/main")-->
            <label>
                <input type="text" name="text" placeholder="Введите сообщение!">
            </label>
            <label>
                <input type="text" name="tag" placeholder="Тег">
                <input type="file" name="file">
            </label>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>


    <!--       filter               -->
    <form method="get" action="/main">
        <label>
            <input type="text" name="filter" value="${filter?ifExists}">
        </label>
        <button type="submit">Найти</button>
    </form>


    <!--       message list               -->
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>
        </div>
    <#else>
        No messages!
    </#list>
</@c.page>