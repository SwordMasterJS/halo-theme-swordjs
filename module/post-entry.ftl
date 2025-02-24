<#list posts.content as post>
    <div class="post-entry post animated fadeInDown">
        <div class="post-title">
            <h3>
                <a href="${post.fullPath!}">${post.title}</a>
            </h3>
        </div>
        <div class="post-mid">
            <div class="meta">
                <div class="info">
                    <i class="fa fa-sun-o"></i>
                    <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
                    <i class="fa fa-comment-o"></i>
                    <a href="${post.fullPath!}#comment_widget">Comments</a>
                    <#if post.tags?size gt 0>
                        <i class="fa fa-tag"></i>
                        <#list post.tags as tag>
                            <a href="${tag.fullPath}" class="tag">&nbsp;${tag.name}</a>
                        </#list>
                    </#if>
                </div>
            </div>
        </div>
        <div class="post-content">
            <div class="p_part">
                <p>${post.summary!}...</p>
            </div>
            <div class="p_part">
                <p></p>
            </div>
        </div>
        <div class="post-entry-footer">
            <div class="meta">
                <div class='more'>
                    <a href="${post.fullPath!}" style="color:#4786d6">阅读全文</a>
                </div>
            </div>
        </div>
    </div>
</#list>
