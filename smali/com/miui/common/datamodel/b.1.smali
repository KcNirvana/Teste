.class public Lcom/miui/common/datamodel/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aAb:Ljava/util/List;

.field private static final aAc:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/common/datamodel/b;->aAc:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/common/datamodel/b;->aAc:Ljava/util/HashMap;

    const-string/jumbo v1, "http://sec-cdn.static.xiaomi.net/secStatic/icon/ziqidongguanli.png"

    const-string/jumbo v2, "assets://img/ziqidongguanli.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/datamodel/b;->aAc:Ljava/util/HashMap;

    const-string/jumbo v1, "https://sec-cdn.static.xiaomi.net/secStatic/proj/xiezai.png"

    const-string/jumbo v2, "assets://img/xiezai.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aJH(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static aJI()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afr(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    return-object v0
.end method

.method private static aJJ(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_show_network_assistant"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static aJK(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->isXiaomiAccountPresent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static aJL(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v3

    :sswitch_1
    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJM(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_2
    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_3
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/a;->bsg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_4
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/a;->bsd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_5
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJJ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_6
    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_8
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :sswitch_9
    const-string/jumbo v1, "support_network_controller"

    invoke-static {v0, v1}, Lcom/miui/common/datamodel/b;->aJP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :sswitch_a
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJO(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :sswitch_b
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/i;->fC(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :cond_1
    return v2

    :sswitch_c
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJN(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xb -> :sswitch_5
        0x10 -> :sswitch_6
        0x11 -> :sswitch_7
        0x17 -> :sswitch_8
        0x1b -> :sswitch_9
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2b -> :sswitch_0
        0x2c -> :sswitch_a
    .end sparse-switch
.end method

.method public static aJM(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v0, "extra_show_security_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aJN(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afr(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    const-string/jumbo v0, "appsArrayList Number"

    sget-object v1, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/common/datamodel/b;->aAb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static aJO(Landroid/content/Context;)Z
    .locals 12

    const-wide/32 v10, 0x927c0

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/s;->aQD()Lcom/miui/powercenter/quickoptimize/t;

    move-result-object v3

    invoke-static {v8, v9}, Lcom/miui/securityscan/c;->Ow(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v2, v4, v10

    if-gez v2, :cond_0

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, v3, Lcom/miui/powercenter/quickoptimize/t;->aEx:Z

    if-eqz v2, :cond_1

    iget v2, v3, Lcom/miui/powercenter/quickoptimize/t;->aEy:I

    if-nez v2, :cond_1

    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/common/datamodel/b;->aJH(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/miui/powercenter/a;->bfd()I

    move-result v3

    if-ge v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static aJP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.miui.securitycenter"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static aJQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/common/datamodel/b;->aAc:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
