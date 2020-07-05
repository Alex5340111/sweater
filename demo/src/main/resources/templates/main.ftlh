<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div><@l.logout/></div>

    <!--       message put        -->
    <div>
        <form method="post" action="/main"><!--@PostMapping("/main")-->
            <label>
                <input type="text" name="text" placeholder="Введите сообщение!">
            </label>
            <label>
                <input type="text" name="tag" placeholder="Тег">
            </label>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>


    <!--       filter               -->
    <form method="get" action="/main">
        <label>
            <input type="text" name="filter">
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
        </div>
    <#else>
        No messages!
    </#list>
</@c.page>