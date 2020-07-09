<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <@l.logout/>
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
    <form action="/main">
        <label>
            <input type="text" name="filter">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
        </label>
        <button type="submit">Найти</button>
    </form>

    <#list messages as message>
        <div>
            <b>ID:${message.id}</b>
            <span>Message:${message.text}</span>
            <i>Tag:${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No message!
    </#list>
</@c.page>