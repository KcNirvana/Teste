.class public Lcom/miui/antispam/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ym(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "name_list_result"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "200_num_check"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Yn(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "main_module"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "200_num_check_black"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Yo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "main_module"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "200_num_check_unkown"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Yp()V
    .locals 1

    const-string/jumbo v0, "sms_url_scan"

    invoke-static {v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static Yq()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "short_link_check"

    const-string/jumbo v2, "short_link"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "200_num_check"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Yr(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "homepage_click"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Ys(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "intercept_event"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Yt(J)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-wide/16 v2, 0x1f4

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    const-string/jumbo v1, "time"

    const-string/jumbo v2, "fast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "intercept_time"

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    const-string/jumbo v1, "time"

    const-string/jumbo v2, "medium"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5dc

    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    const-string/jumbo v1, "time"

    const-string/jumbo v2, "slow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x7d0

    cmp-long v1, p0, v2

    if-gez v1, :cond_3

    const-string/jumbo v1, "time"

    const-string/jumbo v2, "optimaze"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "time"

    const-string/jumbo v2, "timeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static Yu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Yv(IJ)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intercept_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/antispam/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static Yw(Landroid/content/Context;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v3, "toggle_intercept_swindle"

    invoke-static {p0, p1}, Lcom/miui/antispam/db/a;->YQ(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_intercept_intermediary"

    invoke-static {p0, p1}, Lcom/miui/antispam/db/a;->YR(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_intercept_peddle"

    invoke-static {p0, p1}, Lcom/miui/antispam/db/a;->YS(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_intercept_spam"

    invoke-static {p0, p1}, Lcom/miui/antispam/db/a;->YT(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_not_limited_repeated_calls"

    invoke-static {p1}, Lcom/miui/antispam/db/a;->YU(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_intercept_call_transfer"

    invoke-static {p1}, Lcom/miui/antispam/db/a;->YV(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_stranger_call"

    const-string/jumbo v0, "stranger_call_mode"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v2

    :goto_6
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_overseas_call"

    const-string/jumbo v0, "oversea_call_mode"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v2

    :goto_7
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_contacts_call"

    const-string/jumbo v0, "contact_call_mode"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v2

    :goto_8
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_empty_number"

    const-string/jumbo v0, "empty_call_mode"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v2

    :goto_9
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_sms_contact"

    const-string/jumbo v0, "contact_sms_mode"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v2

    :goto_a
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_black_number"

    invoke-static {p0, p1}, Lcom/miui/antispam/util/h;->XI(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v1

    :goto_b
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_white_number"

    invoke-static {p0, p1}, Lcom/miui/antispam/util/h;->XJ(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_d

    move v0, v1

    :goto_c
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_sms_keyword_black"

    invoke-static {p0, v1, p1}, Lcom/miui/antispam/util/h;->XK(Landroid/content/Context;II)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_d
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_sms_keyword_white"

    invoke-static {p0, v8, p1}, Lcom/miui/antispam/util/h;->XK(Landroid/content/Context;II)I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    :goto_e
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_auto_update"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isSMSClassifierAutoUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_f
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v0, "busy_tone"

    aput-object v0, v3, v2

    const-string/jumbo v0, "absentee"

    aput-object v0, v3, v1

    const-string/jumbo v0, "power_off"

    aput-object v0, v3, v6

    const-string/jumbo v0, "halt"

    aput-object v0, v3, v7

    invoke-static {p1}, Lcom/miui/antispam/db/a;->YW(I)I

    move-result v0

    const-string/jumbo v4, "toggle_back_sound"

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    aget-object v0, v3, v0

    invoke-static {v4, v0}, Lcom/miui/antispam/a/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, "all"

    aput-object v3, v0, v2

    const-string/jumbo v3, "non_black"

    aput-object v3, v0, v1

    const-string/jumbo v3, "off"

    aput-object v3, v0, v6

    const-string/jumbo v3, "toggle_noti"

    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v4

    aget-object v0, v0, v4

    invoke-static {v3, v0}, Lcom/miui/antispam/a/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, "intercept"

    aput-object v3, v0, v2

    const-string/jumbo v2, "smart_intercept"

    aput-object v2, v0, v1

    const-string/jumbo v2, "pass"

    aput-object v2, v0, v6

    const-string/jumbo v2, "toggle_sms_stranger"

    const-string/jumbo v3, "stranger_sms_mode"

    invoke-static {p0, v3, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    aget-object v3, v0, v3

    invoke-static {v2, v3}, Lcom/miui/antispam/a/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "toggle_sms_noti"

    const-string/jumbo v3, "service_sms_mode"

    invoke-static {p0, v3, p1, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v2, v0}, Lcom/miui/antispam/a/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v1

    goto/16 :goto_6

    :cond_8
    move v0, v1

    goto/16 :goto_7

    :cond_9
    move v0, v1

    goto/16 :goto_8

    :cond_a
    move v0, v1

    goto/16 :goto_9

    :cond_b
    move v0, v1

    goto/16 :goto_a

    :cond_c
    move v0, v2

    goto/16 :goto_b

    :cond_d
    move v0, v2

    goto/16 :goto_c

    :cond_e
    move v0, v2

    goto/16 :goto_d

    :cond_f
    move v0, v2

    goto/16 :goto_e

    :cond_10
    move v0, v2

    goto/16 :goto_f
.end method

.method public static Yx(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "toggle_antispam"

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lcom/miui/antispam/a/a;->Yw(Landroid/content/Context;I)V

    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Lcom/miui/antispam/a/a;->Yw(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/antispam/a/a;->Yw(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "toggle_antispam"

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Lcom/miui/antispam/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v1}, Lcom/miui/antispam/a/a;->Yw(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static recordCountEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.antispam"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.antispam"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.antispam"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.antispam"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
