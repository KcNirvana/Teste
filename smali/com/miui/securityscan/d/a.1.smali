.class public Lcom/miui/securityscan/d/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KA()V
    .locals 1

    const-string/jumbo v0, "settings_cloud_data_update"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static KB(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/u;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/u;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static KC(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/x;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static KD(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0xe10

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static KE(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "firstaidkit_resultpage_function"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static KF(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/M;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/M;-><init>(Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static KG()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/K;

    invoke-direct {v0}, Lcom/miui/securityscan/d/K;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static KH()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/L;

    invoke-direct {v0}, Lcom/miui/securityscan/d/L;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static KI(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/gamebooster/a/x;->hD(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "game_show"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "old_user"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "game_homepage_action"

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "new_user"

    goto :goto_0
.end method

.method private static KJ(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "newcheck_result_action_activity"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static KK(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "newcheck_result_action_ad"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static KL(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "newcheck_result_action_ad"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static KM(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "newcheck_result_action_f1"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static KN(Ljava/util/List;)V
    .locals 4

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "module_show"

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "newcheck_result_action_f1"

    invoke-static {v0, v2}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static KO(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "newcheck_result_action_news"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static KP(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/w;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/w;-><init>(Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static KQ(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slide_down_action_activity"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static KR(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slide_down_action_ad"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static KS(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slide_down_action_ad"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static KT(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getStatKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getABtest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "module_show"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "slide_down_action_f"

    invoke-static {v0, v2}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/miui/securityscan/d/h;->LG(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    invoke-virtual {v0}, Lcom/miui/common/card/functions/BaseFunction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KI(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private static KU(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slide_down_action_news"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static KV(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/t;

    invoke-direct {v0, p1, p0}, Lcom/miui/securityscan/d/t;-><init>(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static KW(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "notification_click"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static KX(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "toggle_allow_networking"

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_receive_monthly_report"

    invoke-static {}, Lcom/miui/monthreport/m;->bvv()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_display_on_notification_bar"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/a;->bsh(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_onekey_clean"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KU:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_powerclean"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KT:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_antispam"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KJ:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_virusscan"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KV:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_trashclean"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KK:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_network_diagnostics"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KO:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_networkassistant"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KM:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_permissionmanage"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KR:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_powersaving"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KS:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_shortcut_lucky_money"

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KL:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v3

    const-string/jumbo v4, "toggle_news_onlywlan"

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_recommend_news"

    if-eqz v3, :cond_e

    :goto_e
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/d/a;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KY(Landroid/content/Context;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    move v0, v2

    goto :goto_d

    :cond_e
    move v1, v2

    goto :goto_e
.end method

.method private static KY(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/I;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/I;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/d/I;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic KZ(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/d/a;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static Kb(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/r;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/r;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kc(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static Kd(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/p;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/p;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Ke(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/z;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/z;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kf(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/A;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/A;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kg()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/k;

    invoke-direct {v0}, Lcom/miui/securityscan/d/k;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kh()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/n;

    invoke-direct {v0}, Lcom/miui/securityscan/d/n;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Ki()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/m;

    invoke-direct {v0}, Lcom/miui/securityscan/d/m;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kj()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/H;

    invoke-direct {v0}, Lcom/miui/securityscan/d/H;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kk()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/i;

    invoke-direct {v0}, Lcom/miui/securityscan/d/i;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kl()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/j;

    invoke-direct {v0}, Lcom/miui/securityscan/d/j;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Km(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/D;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/D;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kn(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/G;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/G;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Ko(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/y;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/y;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kp()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/l;

    invoke-direct {v0}, Lcom/miui/securityscan/d/l;-><init>()V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kq(I)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/J;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/J;-><init>(I)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kr(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/B;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/B;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Ks(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/E;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/E;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kt(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/C;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/C;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Ku(J)V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/d/F;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/d/F;-><init>(J)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kv(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/q;

    invoke-direct {v0, p1, p0}, Lcom/miui/securityscan/d/q;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kw(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "slide_down_action_f"

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Kx(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/o;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/o;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Ky(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/s;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Kz(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/d/v;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/d/v;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic La(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/securityscan/d/a;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method static synthetic Lb(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lc(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/d/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic Ld(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic Le(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KJ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lf(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lg(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lh(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KN(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Li(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KO(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lj(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KQ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Lk(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Ll(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/d/a;->KT(Landroid/content/Context;Lcom/miui/common/card/models/FunctionCardModel;)V

    return-void
.end method

.method static synthetic Lm(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/d/a;->KU(Ljava/lang/String;)V

    return-void
.end method

.method private static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "com.miui.securitycenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "com.miui.securitycenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
