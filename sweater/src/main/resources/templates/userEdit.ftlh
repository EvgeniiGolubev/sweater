<#import "parts/common.ftlh" as c>

<@c.page>
User editor

    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}"/>
        <#list roles as role>
            <div>
                <label>
<#-- https://www.youtube.com/watch?v=6dteOGWy4uk&list=PLU2ftbIeotGoGSEUf54LQH-DgiQPF2XRO&index=6&ab_channel=letsCode -->
                    <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}/>${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId"/>
        <input type="hidden" value="${_csrf.token}" name="_csrf"/>
        <button type="submit">Save</button>
    </form>
</@c.page>