<#macro mainLayout active bodyClass>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>${msg("accountManagementTitle")}</title>
  <link rel="icon" href="https://s3-us-west-2.amazonaws.com/whistic/img/favicon-32x32-white-bg.png">
  <#if properties.styles?has_content>
    <#list properties.styles?split(' ') as style>
      <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
    </#list>
  </#if>
  <#if properties.scripts?has_content>
    <#list properties.scripts?split(' ') as script>
      <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
    </#list>
  </#if>
</head>
<body class="admin-console user ${bodyClass}">

<div id="wrapper" style="height: 100%">
  <!-- SIDEBAR -->
  <div class="navbar-default navbar-static-side bs-sidebar ng-scope">
    <div class="nav-header text-center">
      <a href="https://www.whistic.com"><img src="https://s3-us-west-2.amazonaws.com/whistic/img_dashboard/whistic-logo-white.svg" alt="W" width="160" height="40" /></a>
    </div>

    <ul>
      <li class="<#if active=='account'>active</#if>"><a href="${url.accountUrl}">${msg("account")}</a></li>
      <#if features.passwordUpdateSupported>
        <li class="<#if active=='password'>active</#if>"><a href="${url.passwordUrl}">${msg("password")}</a></li>
      </#if>
      <li class="<#if active=='totp'>active</#if>"><a href="${url.totpUrl}">${msg("authenticator")}</a></li>
      <#if features.identityFederation>
        <li class="<#if active=='social'>active</#if>"><a href="${url.socialUrl}">${msg("federatedIdentity")}</a></li>
      </#if>
    <#--<li class="<#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>-->
    <#--<li class="<#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li>-->
    <#--<#if features.log><li class="<#if active=='log'>active</#if>"><a href="${url.logUrl}">${msg("log")}</a></li></#if>-->
      <li class="landing_link">
        <#if referrer?has_content && referrer.url?has_content>
          <#--<li><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></li>-->
          <a href="${referrer.url}"><i class="fa fa-tachometer"></i> <span class="nav-label">${msg("backTo",referrer.name)}</span></a>
        <#else>
          <a href="https://www.whistic.com/#/dashboard/main"><i class="fa fa-tachometer"></i> <span class="nav-label">Back to Dashboard</span></a>
        </#if>
      </li>
    </ul>
  </div>

  <!-- CONTENT -->
  <div id="page-wrapper" class="content-area gray-bg position-relative">
    <!-- NAVBAR -->
    <header class="navbar navbar-default navbar-pf navbar-main header">
        <div class="collapse navbar-collapse" id="navbar-collapse" ng-switch="isAuthenticated()">
          <ul class="nav navbar-top-links navbar-right">

            <#if realm.internationalizationEnabled>
              <li>
                <div class="kc-dropdown" id="kc-locale-dropdown">
                  <a href="#" id="kc-current-locale-link">${locale.current}</a>
                  <ul>
                    <#list locale.supported as l>
                      <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                    </#list>
                  </ul>
                </div>
            <li>
            </#if>
            <li><a href="${url.logoutUrl}"><i class="fa fa-sign-out"></i> ${msg("doSignOut")}</a></li>
          </ul>
        </div>
    </header>

    <!-- CONTENT -->

    <#if message?has_content>
    <div class="col-md-12">
      <div class="alert alert-${message.type}">
        <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
        <#if message.type=='error' ><span class="pficon pficon-error-octagon"></span><span class="pficon pficon-error-exclamation"></span></#if>
        ${message.summary}
      </div>
    </div>
    </#if>

    <#nested "content">
  </div>
</div>

</body>
</html>
</#macro>
