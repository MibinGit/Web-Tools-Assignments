<%--
  Created by IntelliJ IDEA.
  User: kirito
  Date: 2019-02-10
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
  <head>
    <title>Part 4. Programming Assignment</title>
    <meta charset = "utf-8">
    <meta name = "viewport" content = "width=device-width, initial-scale=1">
    <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>

  <body>
    <div class = "container">
      <div class = "jumbotron">
        <h1>Part 4. Programming Assignment</h1>
        <br>
        <p>Create a JSP page about Premier League!</p>
        <p>Use at least 3 JSTL tags from each tag library!</p>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <c:set var="salary1" value="${4000*2}"/>

        <h2><c:out value="${null}" escapeXml="false">January 2019 Transfers (Using c:out c:set c:if)</c:out></h2><hr>
        <h4><c:out value="${null}" escapeXml="false">Spain international Denis Suarez is joining us from Barcelona on loan for the remainder of the season.</c:out></h4>
        <c:out value="${null}" escapeXml="false">The 25-year-old attacking midfielder is reunited with our head coach Unai Emery. He spent the 2014/15 season on loan with Sevilla, where he was part of the squad which won the 2015 Europa League.</c:out><br><br>
        <c:out value="${null}" escapeXml="false">Unai said: “We are very happy that Denis Suarez is joining us. He is a player we know well and I have worked with him at Sevilla. He brings us quality and options in many different attacking positions, so he’ll be able to help the team.”</c:out><br><br>

        <c:if test="${salary1 > 3000}">
          <c:out value="${null}" escapeXml="false">His salary will be $ </c:out>
          <c:out value="${salary1}"/>
          <c:out value="${null}" escapeXml="false"> when he come to the Arsenal.</c:out><br><br>
        </c:if>

        <div class="text-center">
          <img src="<%=request.getContextPath()%>../pic/2019-Transfers-1.png" height="300" width="250" />
        </div>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <c:set var="salary2" value="${1000*2}"/>

        <h2><c:out value="${null}" escapeXml="false">January 2019 Transfers (Using c:out c:set c:if c:redirect)</c:out></h2><hr>
        <h4><c:out value="${null}" escapeXml="false">Gonzalo Higuain has today joined Chelsea on loan for the remainder of the season.</c:out></h4>
        <c:out value="${null}" escapeXml="false">The 31-year-old striker moves to Stamford Bridge from Italian side Juventus. He spent the first half of the campaign on loan at AC Milan where he scored eight goals.</c:out><br><br>
        <c:out value="${null}" escapeXml="false">A proven goalscorer throughout his career, and an Argentina international, Higuain arrives with a wealth of experience at the highest level having consistently shown his attacking quality during spells in Argentina, Spain and Italy.</c:out><br><br>
        <c:out value="${null}" escapeXml="false">Clinical in and around the penalty area, as well as providing a strong aerial threat, Higuain previously played under Maurizio Sarri at Napoli in 2015/16, when he finished as top scorer in Serie A with 36 goals, breaking a long-standing Serie A record.</c:out><br><br>

        <c:if test="${salary2 > 3000}">
          <c:out value="${null}" escapeXml="false">His salary will be $ </c:out>
          <c:out value="${salary2}"/>
          <c:out value="${null}" escapeXml="false"> when he come to the Chelsea.</c:out><br><br>
          <c:redirect url="https://www.premierleague.com/stats"/>
        </c:if>

        <div class="text-center">
          <img src="<%=request.getContextPath()%>../pic/2019-Transfers-2.png" height="250" width="400" />
        </div>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">January 2019 Transfers (Using c:out)</c:out></h2><hr>
        <h4><c:out value="${null}" escapeXml="false">Pedro Chirivella joins Extremadura UD on loan.</c:out></h4>
        <c:out value="${null}" escapeXml="false">Liverpool can confirm Pedro Chirivella has joined Extremadura UD on loan until the end of the season, subject to international clearance.</c:out><br><br>
        <c:out value="${null}" escapeXml="false">The midfielder will spend the remainder of the 2018-19 campaign with the Spanish Segunda Division side after finalising the deal on deadline day.</c:out><br><br>
        <c:out value="${null}" escapeXml="false">Chirivella joined the Reds from Valencia in July 2013, initially linking up with the club’s Academy.</c:out><br><br>
        <c:out value="${null}" escapeXml="false">The 21-year-old has made five competitive appearances for the first team, including one Premier League start at Swansea City in May 2016.</c:out><br><br>

        <div class="text-center">
          <img src="<%=request.getContextPath()%>../pic/2019-Transfers-3.png" height="250" width="350" />
        </div>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">Data Format Transfer (Using fmt:formatNumber)</c:out></h2><hr>
        <c:set var="balance" value="57000.1407" />
        <p>Data Type 1 with current balance: <fmt:formatNumber value="${balance}" type="currency"/></p>
        <p>Data Type 2 with max integer after the decimal: <fmt:formatNumber type="number" maxIntegerDigits="3" value="${balance}" /></p>
        <p>Data Type 3 with current balance which goes to the third decimal: <fmt:formatNumber type="number" maxFractionDigits="3" value="${balance}" /></p>
        <p>Data Type 4 with current balance without separate point: <fmt:formatNumber type="number" groupingUsed="false" value="${balance}" /></p>
        <p>Data Type 5 with max percentage: <fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}" /></p>
        <p>Data Type 6 with min percentage: <fmt:formatNumber type="percent" minFractionDigits="10" value="${balance}" /></p>
        <p>Data Type 7 with $ format: <fmt:setLocale value="en_US"/> <fmt:formatNumber value="${balance}" type="currency"/></p>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">Parse Number (Using fmt:parseNumber)</c:out></h2><hr>
        <c:set var="balance" value="1250003.350" />
        <fmt:parseNumber var="i" type="number" value="${balance}" />
        <p>Target Number with it's original value without the number 0 after it: <c:out value="${i}" /></p>
        <fmt:parseNumber var="i" integerOnly="true" type="number" value="${balance}" />
        <p>Target Number with only the number before the decimal point: <c:out value="${i}" /></p>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">Date Format Transfer (Using fmt:formatDate)</c:out></h2><hr>
        <c:set var="now" value="<%=new java.util.Date()%>" />
        <p>Date Type 1 with now time: <fmt:formatDate type="time" value="${now}" /></p>
        <p>Date Type 2 with now date: <fmt:formatDate type="date" value="${now}" /></p>
        <p>Date Type 3 with now time and now date: <fmt:formatDate type="both" value="${now}" /></p>
        <p>Date Type 4 with short time and short date: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}" /></p>
        <p>Date Type 5 with medium time and medium date: <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}" /></p>
        <p>Date Type 6 with long time and long date: <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" /></p>
        <p>Date Type 7 with target pattern: <fmt:formatDate pattern="yyyy-MM-dd" value="${now}" /></p>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">Book Information (Using x:out x:parse x:if)</c:out></h2><hr>
        <c:set var="xmltext">
          <players>
            <player>
              <name>Sergio Agüero</name>
              <number>10</number>
              <age>30</age>
              <nationality>Argentina</nationality>
              <birth>02/06/1988</birth>
            </player>

            <player>
              <name>Mohamed Salah</name>
              <number>11</number>
              <age>26</age>
              <nationality>Egypt</nationality>
              <birth>15/06/1992</birth>
            </player>

            <player>
              <name>Pierre-Emerick Aubameyang</name>
              <number>14</number>
              <age>29</age>
              <nationality>Gabon</nationality>
              <birth>18/06/1989</birth>
            </player>
          </players>
        </c:set>

        <x:parse xml="${xmltext}" var="output"/>
        <x:set var="fragment" select="$output//player"/>
        <x:if select="$output//player">
          <p>The name of the first player is: <x:out select="$output/players/player[1]/name" /></p>
          <p>The number of the first player is: <x:out select="$output/players/player[1]/number" /></p>
          <p>The age of the first player is: <x:out select="$output/players/player[1]/age" /></p>
          <p>The nationality of the first player is: <x:out select="$output/players/player[1]/nationality" /></p>
          <p>The birthday of the first player is: <x:out select="$output/players/player[1]/birth" /></p>
          <x:if select="$output/players[1]/player/age > 28">
            <p>Player's age is very high!</p><hr>
          </x:if>

          <p>The name of the second player is: <x:out select="$output/players/player[2]/name" /></p>
          <p>The number of the second player is: <x:out select="$output/players/player[2]/number" /></p>
          <p>The age of the second player is: <x:out select="$output/players/player[2]/age" /></p>
          <p>The nationality of the second player is: <x:out select="$output/players/player[2]/nationality" /></p>
          <p>The birthday of the second player is: <x:out select="$output/players/player[2]/birth" /></p><hr>
          <x:if select="$output/players[2]/player/age > 28">
            <p>Player's age is very high!</p><hr>
          </x:if>

          <p>The name of the third player is: <x:out select="$output/players/player[3]/name" /></p>
          <p>The number of the third player is: <x:out select="$output/players/player[3]/number" /></p>
          <p>The age of the third player is: <x:out select="$output/players/player[3]/age" /></p>
          <p>The nationality of the third player is: <x:out select="$output/players/player[3]/nationality" /></p>
          <p>The birthday of the third player is: <x:out select="$output/players/player[3]/birth" /></p>
        </x:if>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">String Example (Using fn:contains() fn:containsIgnoreCase() fn:endsWith() fn:length())</c:out></h2><hr>
        <c:set var="theString" value="My name is Sergio Agüero!"/>

        <c:if test="${fn:contains(theString, 'Sergio Agüero')}">
          <p>Find Sergio Agüero<p>
        </c:if>

        <c:if test="${fn:contains(theString, 'Mohamed Salah')}">
          <p>Find Mohamed Salah<p>
        </c:if>

        <c:if test="${fn:contains(theString, 'Pierre-Emerick Aubameyang')}">
          <p>Find Pierre-Emerick Aubameyang<p>
        </c:if>

        <c:if test="${fn:containsIgnoreCase(theString, 'SERGIO AGüERO')}">
          <p>Find SERGIO AGüERO<p>
        </c:if>

        <c:if test="${fn:endsWith(theString, '!')}">
          <p>The string is end with !<p>
        </c:if>

        <p>The length of this string is : ${fn:length(theString)}</p>
      </div>
    </div>

    <div class = "container">
      <div class = "jumbotron">
        <h2><c:out value="${null}" escapeXml="false">January 2019 Transfers (Using c:import)</c:out></h2><hr>
        <c:out value="${null}" escapeXml="false">You can see the target web page code as following</c:out><br><br>
        <c:import var="data" url="https://www.premierleague.com/stats"/>
        <c:out value="${data}"/><br><br>
      </div>
    </div>
  </body>
</html>
