<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <!--<xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>-->
  <xsl:template match="/">
    <html>
      <body>
        <h3>Supply Chain Management Report </h3>
        <table border="1">
          <tr bgcolor="#3366FF">
            <!--<th>Course Name</th>-->
            <th>Student Number</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Student Attendance Statistics</th>
          </tr>
          <xsl:for-each select="AttendanceDatabase/course/studentsAttendanceStatistics">
            <tr>
              <!--<td>
                <xsl:value-of select="./coursename"/>
              </td>-->
              <td>
                <xsl:value-of select="student/@number"/>
              </td>
              <td>
                <xsl:value-of select="student/firstname"/>
              </td>
              <td>
                <xsl:value-of select="student/lastname"/>
              </td>
              <td>
                <xsl:value-of select="@PresencePercentage"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
