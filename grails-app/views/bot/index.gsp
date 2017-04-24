<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bot4jdeployment"/>
    <g:set var="entityName" value="${message(code: 'bot.label', default: 'Bot')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<!--<a href="#list-bot" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>-->


<div id="list-bot" class="content scaffold-list" role="main">
    <h3><g:message code="default.list.label" args="[entityName]"/></h3>
    <g:if test="${flash.message}">
        <div class="message alert alert-info" role="status">${flash.message}</div>
    </g:if>

<!--<f:table collection="${botList}"/>-->
    <table class="table table-striped">
        <thead class="">
        <tr>
            <th>Name</th>
            <th>Deployment Destination</th>
            <th>Facebook Specs</th>
            <th>Slack Specs</th>
            <th>Telegram Specs</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${botList}">
            <tr>
                <td>
            <g:link class="show" action="show" resource="${it}">
                ${it.name}
            </g:link>
            </td>
            <td>${it.deploymentDestination}</td>
            <g:if test="${it.facebookSpec}">
                <td>${it.facebookSpec}</td>
            </g:if>
            <g:else>
                <td>None</td>
            </g:else>
            <g:if test="${it.slackSpec}">
                <td>${it.slackSpec}</td>
            </g:if>
            <g:else>
                <td>None</td>
            </g:else>
            <g:if test="${it.telegramSpec}">
                <td>${it.telegramSpec}</td>
            </g:if>
            <g:else>
                <td>None</td>
            </g:else>
        </g:each>
        </tbody>
    </table>


    <div class="pagination">
        <g:paginate total="${botCount ?: 0}"/>
    </div>
</div>
</body>
</html>