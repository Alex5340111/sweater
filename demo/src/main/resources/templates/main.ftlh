<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>

    <!--       filter               -->
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input class="form-control mr-3" type="text" name="filter" value="${filter?ifExists}">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>

    <!--       collapse  form      -->
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Add new message
    </a>
    <!--       message put message       -->
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" action="/main" enctype="multipart/form-data"><!--@PostMapping("/main")-->
                <div class="form-group">
                    <input class="form-control" type="text" name="text" placeholder="Введите сообщение!">
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="tag" placeholder="Тег">
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="btn btn-primary">Add</button>
            </form>
        </div>
    </div>
    <div>Список сообщений</div>

    <!--       message list               -->
    <div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
            <span>${message.text}</span>
            </div>
            <i>${message.tag}</i>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
    <#else>
        No messages!
    </#list>
    </div>
</@c.page>