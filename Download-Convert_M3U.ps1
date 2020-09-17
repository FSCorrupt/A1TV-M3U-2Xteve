$M3ULink= "http://epggw.a1.net/a/service.fta.m3u"
#$XMLLink = "https://a1.epg.wb1.xyz/epg.xml"
#$XMLFile= "D:\Tools\A1tv.xml"
$M3UFile= "D:\Tools\A1tv.m3u"
$ReplaceText= "http://192.168.1.2:4022/rtp/" # ip and Port from Xteve

Start-BitsTransfer -Source $M3ULink -Destination $M3UFile
#Start-BitsTransfer -Source $XMLLink -Destination $XMLFile

$M3UContent= (Get-Content $M3UFile).Replace('rtp://@',$ReplaceText) | Set-Content $M3UFile
