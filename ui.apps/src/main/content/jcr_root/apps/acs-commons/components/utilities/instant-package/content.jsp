<%--
  ~ #%L
  ~ ACS AEM Commons Bundle
  ~ %%
  ~ Copyright (C) 2015 Adobe
  ~ %%
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~   http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  ~ #L%
  --%>
<%@include file="/libs/foundation/global.jsp" %><%
%><%@page session="false" contentType="text/html" pageEncoding="utf-8"
          import="com.adobe.acs.commons.util.RequireAem" %><%

RequireAem requireAem = sling.getService(RequireAem.class);

if (RequireAem.Distribution.CLOUD_READY.equals(requireAem.getDistribution())) { %>

<link rel="stylesheet" href="https://unpkg.com/@adobe/spectrum-css@2.15.1/dist/standalone/spectrum-light.css"/>
<div class="spectrum-Toast spectrum-Toast--negative" style="display: block; margin: 0 auto; width: 100%;">
    <div class="spectrum-Toast-body">
        <div class="spectrum-Toast-content">
            Sorry, Instant Package is not compatible with your version of Adobe Experience Manager.
        </div>
    </div>
</div>

<%  return;
} %>

%><div ng-controller="MainCtrl"
       ng-cloak
       ng-init="init('${resourcePath}');">

    <cq:include script="includes/form.jsp"/>

    <br/>
    <hr/>

    <p>The ACS Commons instant package feature allows to quickly create the package from sites UI console.
        A usefull utility which require minimum clicks to create and download package</p>

    <ul>
        <li>Once enabled, the instant package feature available in the Touch UI sites console top action base.</li>
        <li>Options can selection from dialog which will allow to include child pages along with selected path in console</li>
    </ul>

    <center>
        <img src="./instant-package/_jcr_content/instant-package-image.png" title="Instant Package"/>
    </center>
</div>
