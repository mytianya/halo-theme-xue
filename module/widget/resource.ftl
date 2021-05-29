<#if post.resources??&&post.resources?size gt 0>
    <div id="resouces">
        <div class="tip">文章资源下载地址</div>
        <#list post.resources as resource>
            <#if resource.status>
                <#switch resource.type>
                    <#case "wangpan">
                        <div class="down">网盘下载:<a href="${resource.url}" target="_blank">${resource.name}</a></div>
                          <div class="down">关注<span class="bigger">微信公众号程序员众推</span>发送<span class="bigger">${resource.secretCode}</span>获取网盘提取码</div>
                        <#break>
                    <#case "direct">
                        <div class="down">${resource.name}：<a href="${resource.url}" target="_blank">直链点击下载</a></div>
                        <#break>
                    <#case "bt">
                        <div class="down">磁力地址:${resource.url}</div>
                        <#break>
                    <#default>
                        <div class="down">链接地址:${resource.url}</div>
                </#switch>

            </#if>
        </#list>
    </div>
    <style>
        #resouces{
            border:1px dashed #eee;
        }
        #resouces .tip{
            background-color: #eee;
            text-align: center;
            padding:5px 0;
            font-size: 22px;
        }
        #resouces .down{
            text-align: center;
            border:1px solid #eee;
            padding:8px;
            font-size:18px;
            width:400px;
            margin: 10px auto;
            text-overflow: ellipsis;
            word-wrap: break-word;
            max-width: 80%;
            box-shadow:  rgba(0,0,0,.2) 0 1px 5px 0px;
        }
        #resouces .bigger{
            color: red;
    font-size: 20px;
    font-weight: 700;
        }
    </style>
</#if>