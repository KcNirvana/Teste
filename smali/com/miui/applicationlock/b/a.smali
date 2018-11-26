.class public Lcom/miui/applicationlock/b/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajA(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/b/d;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/b/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajB(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "recommend_page_action"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ajC(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "account_status"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "applock_mistake_reach_max"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ajD(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/b/i;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/b/i;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajE(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/b/g;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/b/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajF()V
    .locals 1

    const-string/jumbo v0, "skin_flag_top"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static ajG()V
    .locals 1

    const-string/jumbo v0, "skin_display"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static ajH(JJ)V
    .locals 2

    new-instance v0, Lcom/miui/applicationlock/b/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/applicationlock/b/j;-><init>(JJ)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "bind_xiaomi_account_dialog_login"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ajJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "bind_xiaomi_account_dialog_unlogin"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static ajK(J)V
    .locals 4

    const-string/jumbo v0, "com.miui.applicationlock"

    const-string/jumbo v1, "locked_app_quantity1"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static ajL()V
    .locals 1

    const-string/jumbo v0, "material_copy_failed"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static ajM()V
    .locals 1

    const-string/jumbo v0, "material_copy_succeed"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static ajN()V
    .locals 1

    const-string/jumbo v0, "material_md5_check_failed"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static ajO()V
    .locals 1

    const-string/jumbo v0, "material_md5_check_succeed"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static ajP()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "locked_app_quantity1"

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->ajK(J)V

    return-void
.end method

.method private static ajQ(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agF(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "applock_message_mask"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/applicationlock/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void
.end method

.method private static ajR(Landroid/content/Context;Lcom/miui/applicationlock/utils/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "toggle_applock_binding"

    const-string/jumbo v1, "on"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "toggle_applock_binding"

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "off_logged_in"

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "off_not_logged"

    goto :goto_1
.end method

.method private static ajS(Lcom/miui/applicationlock/utils/e;)V
    .locals 4

    const-string/jumbo v1, "toggle_convenient_mode"

    invoke-virtual {p0}, Lcom/miui/applicationlock/utils/e;->aeA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/applicationlock/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ajT(Landroid/content/Context;Lcom/miui/applicationlock/utils/e;)V
    .locals 3

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/e;->aey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    :cond_0
    const-string/jumbo v2, "toggle_applock_main"

    invoke-static {v2, v0, v1}, Lcom/miui/applicationlock/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ajU()V
    .locals 6

    const-wide/16 v4, 0x0

    const-string/jumbo v1, "toggle_applock_haveapps"

    const-string/jumbo v0, "locked_app_quantity1"

    invoke-static {v0, v4, v5}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/applicationlock/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ajV(Landroid/content/Context;Lcom/miui/applicationlock/utils/e;)V
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    invoke-static {p0}, Lcom/miui/applicationlock/utils/a;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "hennessy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "ido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "aqua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "toggle_finger_mark"

    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/e;->aeB()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/applicationlock/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private static ajW(Lcom/miui/applicationlock/utils/e;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/applicationlock/utils/e;->aev()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "toggle_lock_time"

    const-string/jumbo v1, "lockscreen"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "toggle_lock_time"

    const-string/jumbo v1, "lockscreen_quit_app"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "toggle_lock_time"

    const-string/jumbo v1, "lockscreen_quit_1min_app"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static ajX(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "toggle_applock_showdrawing"

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->afL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/applicationlock/b/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic ajY(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ajr(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/b/c;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/b/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "set_forget_page_binding_result"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ajt(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "enter_way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "noti_mask_enter_way"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static aju(Lmiui/security/SecurityManager;)V
    .locals 4

    const-string/jumbo v0, "development"

    invoke-static {}, Lcom/miui/securityscan/utils/b;->getMiuiVersionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->agF(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v3, "app_name"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "applock_message_mask_name"

    invoke-static {v0, v2}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static ajv(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "applock_homepage_click"

    invoke-static {v1, v0}, Lcom/miui/applicationlock/b/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ajw(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "mixed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mix_password"

    :goto_0
    new-instance v1, Lcom/miui/applicationlock/b/e;

    invoke-direct {v1, v0}, Lcom/miui/applicationlock/b/e;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string/jumbo v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "number"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pattern"

    goto :goto_0
.end method

.method public static ajx(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/applicationlock/b/a;->ajT(Landroid/content/Context;Lcom/miui/applicationlock/utils/e;)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aey()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajW(Lcom/miui/applicationlock/utils/e;)V

    invoke-static {p0}, Lcom/miui/applicationlock/b/a;->ajX(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/applicationlock/b/a;->ajU()V

    invoke-static {p0}, Lcom/miui/applicationlock/b/a;->ajQ(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/miui/applicationlock/b/a;->ajV(Landroid/content/Context;Lcom/miui/applicationlock/utils/e;)V

    invoke-static {p0, v0}, Lcom/miui/applicationlock/b/a;->ajR(Landroid/content/Context;Lcom/miui/applicationlock/utils/e;)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aev()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajS(Lcom/miui/applicationlock/utils/e;)V

    :cond_0
    const-string/jumbo v0, "locked_app_quantity1"

    invoke-static {v0, v4, v5}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/applicationlock/b/a;->ajP()V

    :cond_1
    return-void
.end method

.method public static ajy(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/b/f;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/b/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajz(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/b/h;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/b/h;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "com.miui.applicationlock"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.applicationlock"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.applicationlock"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.applicationlock"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
