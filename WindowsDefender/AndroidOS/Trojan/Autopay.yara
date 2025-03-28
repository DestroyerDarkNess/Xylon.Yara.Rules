rule Trojan_AndroidOS_Autopay_HT_2147927148_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Autopay.HT"
        threat_id = "2147927148"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Autopay"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "zyfGGzqTQVVRMM" ascii //weight: 1
        $x_1_2 = "yDlkiQsmICFTmExO54nK3" ascii //weight: 1
        $x_1_3 = "mysql_password" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

