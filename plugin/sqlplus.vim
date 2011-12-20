<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <link rel="Stylesheet" type="text/css" href="/css/style.css" >
  <title>sqlplus.vim -  Execute SQL queries and commands from within VIM (using Oracle's SQL*Plus) : vim online</title>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="KEYWORDS" content="Vim, Vi IMproved, text editor, home, documentation, tips, scripts, news">
  <link rel="shortcut icon" type="image/x-icon" href="/images/vim_shortcut.ico">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" bgcolor="#ffffff"> 

<!-- HEADER, SPONSOR IMAGE, VIM IMAGE AND BOOK AD -->
<table width="100%" cellpadding="0" cellspacing="0" border="0" bordercolor="red">
  <tr>
    <td colspan="4" class="lightbg"><img src="/images/spacer.gif" width="1" height="5" alt=""></td>
  </tr>
  <tr>
  <td class="lightbg">&nbsp;&nbsp;&nbsp;</td>
  <td class="lightbg" align="left"><a href="/sponsor/index.php"><img src="/images/sponsorvim.gif" alt="sponsor Vim development" border="0"></a></td>
    <td class="lightbg" align="center"><a href="/index.php"><img src="/images/vim_header.gif" border="0" alt="Vim logo"></a></td>
    <td class="lightbg" align="right"><a href="http://iccf-holland.org/click5.html"><img src="/images/buyhelplearn.gif" alt="Vim Book Ad" border="0"></a></td>
  </tr>
  <tr>
    <td colspan="4" class="lightbg"><img src="/images/spacer.gif" width="1" height="5" alt=""></td>
  </tr>
  <tr>
    <td colspan="4" class="darkbg"><img src="/images/spacer.gif" width="1" height="10" alt=""></td>
  </tr>
</table>
<!-- THE PAGE BODY: BETWEEN HEADER AND FOOTER -->

<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <col width="180">
  <col width="1">

  <tr valign="top">
    <td class="sidebar">
      <table width="180" cellpadding="4" cellspacing="0" border="0">
        <tr valign="top">
          <td class="sidebar">

<!-- INCLUDE THE PAGE NAVIGATION -->
<table width="100%" cellpadding="0" cellspacing="0" border="0" bordercolor="red">
    <tr>
        <td><small>not logged in (<a href="/login.php">login</a>)</small></td>
    </tr>
    <tr><td>
<small>&nbsp;</small>
<form action="http://www.google.com/cse" id="cse-search-box">
  <div>
    <input type="hidden" name="cx" value="partner-pub-3005259998294962:bvyni59kjr1" />
    <input type="hidden" name="ie" value="ISO-8859-1" />
    <input type="text" name="q" size="20" />
    <br>
    <input type="submit" name="sa" value="Search" />
  </div>
</form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en"></script>
    </td></tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="1"></td>
    </tr>
    <tr>
        <td class="darkbg"><img src="/images/spacer.gif" alt='' border="0" height="3"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="2"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="/index.php">Home</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/search.php">Advanced search</a></td>
        </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
    <tr>
        <td class="checker"><img src="/images/spacer.gif" alt='' border="0" height="1"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="/about.php">About Vim</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/community.php">Community</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/news/news.php">News</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/sponsor/index.php">Sponsoring</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/trivia.php">Trivia</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/docs.php">Documentation</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/download.php">Download</a></td>
        </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
    <tr>
        <td class="checker"><img src="/images/spacer.gif" alt='' border="0" height="1"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="/scripts/index.php">Scripts</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/tips/index.php">Tips</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="/account/index.php">My Account</a></td>
        </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
    <tr>
        <td class="checker"><img src="/images/spacer.gif" alt='' border="0" height="1"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="/huh.php">Site Help</a></td>
        </tr>
</table>
<br>
<g:plusone></g:plusone>

            <table width="172" cellpadding="0" cellspacing="0" border="0">
              <tr><td><img src="/images/spacer.gif" alt="" border="0" width="1" height="8"></td></tr>
              <tr><td class="darkbg"><img src="/images/spacer.gif" width="1" height="3" alt=""></td></tr>
            </table>
            <br>

<!-- INCLUDE THE PAGE SIDEBAR TEXT -->
&nbsp;

          </td>
        </tr>
      </table>
    </td>

    <td class="darkbg"><img src="/images/spacer.gif" width="1" height="1" border="0" alt=""><br></td>
    <td>
      <table width="100%" cellpadding="10" cellspacing="0" border="0" bordercolor="red">
        <tr>
          <td valign="top">

<span class="txth1">sqlplus.vim :  Execute SQL queries and commands from within VIM (using Oracle's SQL*Plus)</span> 

<br>
<br>

<!-- karma table -->
<table cellpadding="4" cellspacing="0" border="1" bordercolor="#000066">
<tr>
  <td class="lightbg"><b>&nbsp;script karma&nbsp;</b></td>
  <td>
    Rating <b>49/18</b>,
    Downloaded by 583    &nbsp;
    <g:plusone></g:plusone>
  </td>
  <td class="lightbg">
  <b>&nbsp;Comments, bugs, improvements&nbsp;</b>
  </td>
  <td>
    <a href="http://vim.wikia.com/wiki/Script:2821">Vim wiki</a>
  </td>  
</tr>
</table>
<p>

<table cellspacing="0" cellpadding="0" border="0">
<tr><td class="prompt">created by</td></tr>
<tr><td><a href="/account/profile.php?user_id=18221">Dani Rey</a></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="prompt">script type</td></tr>
<tr><td>utility</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="prompt">description</td></tr>
<tr><td>This file contains routines that may be used to execute SQL queries and describe<br>tables from within VIM.&nbsp;&nbsp;It depends on SQL*Plus.&nbsp;&nbsp;You must have $ORACLE_HOME<br>$ORACLE_SID set in your environment, although you can explicitly set the<br>database name to use with the :DB &lt;db-name&gt; command.<br><br>In command mode:<br>&nbsp;&nbsp;&lt;F7&gt;: execute the whole script without applying any changes to it<br>&nbsp;&nbsp;&lt;F8&gt;: execute the SELECT query under your cursor.&nbsp;&nbsp;The query must begin with<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the &quot;select&quot; keyword and end with a &quot;;&quot;<br>&nbsp;&nbsp;&lt;Leader&gt;&lt;F8&gt;: prompt for an SQL command/query to execute.<br>&nbsp;&nbsp;&lt;F9&gt;: treat the identifier under the cursor as a table name, and do a 'describe'<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;on it.<br>&nbsp;&nbsp;&lt;F10&gt;: prompt for a table to describe.<br>&nbsp;&nbsp;&lt;Leader&gt;sb: open an empty buffer in a new window to enter SQL commands in<br>&nbsp;&nbsp;&lt;Leader&gt;ss: execute the (one-line) query on the current line<br>&nbsp;&nbsp;&lt;Leader&gt;se: execute the query under the cursor (as &lt;F8&gt;)<br>&nbsp;&nbsp;&lt;Leader&gt;st: describe the table under the cursor (as &lt;F9&gt;)<br>&nbsp;&nbsp;&lt;Leader&gt;sc: open the user's common SQL buffer (g:sqlplus_common_buffer) in a<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new window.<br><br>&nbsp;&nbsp;:Select &lt;...&gt; -- execute the given Select query.<br>&nbsp;&nbsp;:Update &lt;...&gt; -- execute the given Update command.<br>&nbsp;&nbsp;:Delete &lt;...&gt; -- execute the given Delete command<br>&nbsp;&nbsp;:DB &lt;db-name&gt; -- set the database name to &lt;db-name&gt;<br>&nbsp;&nbsp;:SQL &lt;...&gt; -- open a blank SQL buffer in a new window, or if a filename is<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;specified, open the given file in a new window.<br><br>In visual mode:<br>&nbsp;&nbsp;&lt;F8&gt;: execute the selected query<br><br>If queries contain bind variables, you will be prompted to give a value for each<br>one.&nbsp;&nbsp;if the value is a string, you must explicitly put quotes around it.&nbsp;&nbsp;If the<br>query contains an INTO clause, it is removed before executing.<br><br>You will be prompted for your user-name, password and tnsname the first time you access<br>one of these functions during a session.&nbsp;&nbsp;After that, your user-id and password<br>will be remembered until the session ends.<br><br>The results of the query/command are displayed in a separate window.<br><br>You can specify the values of the following global variables in your .vimrc<br>file, to alter the behavior of this plugin:<br><br>&nbsp;&nbsp;g:sqlplus_userid -- the user-id to log in to the database as.&nbsp;&nbsp;If this<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is specified, g:sqlplus_passwd must be given as well, which is the<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;password to use.&nbsp;&nbsp;Default: &quot;&quot;<br>&nbsp;&nbsp;g:sqlplus_path -- the path the the SQL*Plus executable, including any<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command line options.&nbsp;&nbsp;Default: $ORACLE_HOME . &quot;/bin/sqlplus -s&quot;<br>&nbsp;&nbsp;g:sqlplus_common_commands -- any SQL*Plus commands that should be<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;executed every time SQL*Plus is invoked.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Default: &quot;set pagesize 10000\nset wrap off\nset linesize 9999\n&quot;<br>&nbsp;&nbsp;g:sqlplus_common_buffer -- the name of a file that will contain<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;common SQL queries and expressions, that may be opened via the<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Leader&gt;sc command.<br>&nbsp;&nbsp;g:sqlplus_db -- the name of the database to connect to.&nbsp;&nbsp;This variable<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;may also be modified via the :DB command.<br><br>All the honor goes to Jamis Buck &quot;<a target="_blank" href="http://www.vim.org/account/profile.php?user_id=261&quot">http://www.vim.org/account/profile.php?user_id=261&quot</A>; who wrote the&nbsp;&nbsp;first version &quot;<a target="_blank" href="http://www.vim.org/scripts/script.php?script_id=97&quot">http://www.vim.org/scripts/script.php?script_id=97&quot</A>; of this script. Unfortunately I can not maintain his original script, so I had to fork it.</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="prompt">install details</td></tr>
<tr><td>Copy the sqlplus.vim script to your $HOME/.vim/plugin directory to install it for your user or copy it into $VIM_INSTALLATION_PATH/plugin to install it for all users on this server.&nbsp;&nbsp;Make sure you have set ORACLE_HOME in your environment, to point to the root of your oracle installation.&nbsp;&nbsp;(ie, $ORACLE_HOME/bin should contain sqlplus).</td></tr>
<tr><td>&nbsp;</td></tr>
</table>

<!-- rating table -->
<form name="rating" method="post">
<input type="hidden" name="script_id" value="2821">
<table cellpadding="4" cellspacing="0" border="1" bordercolor="#000066">
<tr>
  <td class="lightbg"><b>rate this script</b></td>
  <td valign="middle">
    <input type="radio" name="rating" value="life_changing">Life Changing
    <input type="radio" name="rating" value="helpful">Helpful
    <input type="radio" name="rating" value="unfulfilling">Unfulfilling&nbsp;
    <input type="submit" value="rate">
  </td>
</tr>
</table>
</form>
<span class="txth2">script versions</span> (<a href="add_script_version.php?script_id=2821">upload new version</a>)
<p>
Click on the package to download.
<p>

<table cellspacing="2" cellpadding="4" border="0" width="100%">
<tr class='tableheader'>
        <th valign="top">package</th>
    <th valign="top">script version</th>
    <th valign="top">date</th>
    <th valign="top">Vim version</th>
    <th valign="top">user</th>
    <th valign="top">release notes</th>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=11561">sqlplus.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>2.0.0</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-10-22</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=18221">Dani Rey</a></i></td>
    <td class="rowodd" valign="top" width="2000">Initial upload</td>
</tr>
</table>
<!-- finish off the framework -->
          </td>
        </tr>
      </table>
    </td>

  </tr>
</table>

<!-- END OF THE PAGE BODY: BETWEEN HEADER AND FOOTER -->

<table width="100%" cellpadding="0" cellspacing="0" border="0" bordercolor="red">
  <tr><td colspan="4"><img src="/images/spacer.gif" width="1" height="5" alt=""></td></tr>
  <tr><td colspan="4" bgcolor="#000000"><img src="/images/spacer.gif" height="2" width="1" alt=""></td></tr>
  <tr><td colspan="4"><img src="/images/spacer.gif" width="1" height="5" alt=""></td></tr>
  <tr>
    <td><img src="/images/spacer.gif" width="5" height="1" alt=""></td>

    <td align="left" valign="top"><small>
      If you have questions or remarks about this site, visit the
      <a href="http://vimonline.sf.net">vimonline development</a> pages.
      Please use this site responsibly.
      <br> 
      
      Questions about <a href="http://www.vim.org/about.php">Vim</a> should go
      to the <a href="http://www.vim.org/maillist.php">maillist</a>.
      Help Bram <a href="http://iccf-holland.org/">help Uganda</a>.
      </small>
	&nbsp;
	&nbsp;

	<!-- Start of StatCounter Code -->
	<script type="text/javascript" language="javascript">
	var sc_project=1417324; 
	var sc_invisible=1; 
	var sc_partition=11; 
	var sc_security="d41633bc"; 
	</script>

	<script type="text/javascript" language="javascript" src="http://www.statcounter.com/counter/counter.js"></script><noscript><a href="http://www.statcounter.com/" target="_blank"><img  src="http://c12.statcounter.com/counter.php?sc_project=1417324&java=0&security=d41633bc&invisible=0" alt="free tracking" border="0"></a> </noscript>
	<!-- End of StatCounter Code -->
          </td>

    <td align="right" valign="top">
      		<a href="http://sourceforge.net/projects/vim" rel="nofollow"><img src="http://sflogo.sourceforge.net/sflogo.php?group_id=8&type=1" width="88" height="31" border="0" alt="SourceForge.net Logo" /></a>
    </td>

    <td><img src="/images/spacer.gif" width="5" height="1" alt=""></td>
  </tr>

    
  <tr><td colspan="4"><img src="/images/spacer.gif" width="1" height="5" alt=""></td>
  
  </tr>
</table>

<!-- for Google +1 button -->
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>

</body>
</html>

