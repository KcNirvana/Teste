.class public Lcom/miui/zeus/columbus/common/SdkConfig;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field public static final API_LEVEL:I = 0x1

.field public static APP_KEY:Ljava/lang/String; = null

.field public static APP_SECRET:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field private static final DEBUGGER_MODE_FILE:Ljava/lang/String; = "debugger_mode_file"

.field private static final DEBUGGER_MODE_KEY:Ljava/lang/String; = "debugger_mode"

.field private static final DEBUGGER_STAGE_KEY:Ljava/lang/String; = "debugger_stage"

.field public static IS_SDK:Z = false

.field private static final RECEIVER:Landroid/content/BroadcastReceiver;

.field public static final SDK_VERSION:Lcom/miui/zeus/columbus/util/u;

.field private static final TAG:Ljava/lang/String; = "SdkConfig"

.field public static USE_STAGING:Z

.field private static sContext:Landroid/content/Context;

.field private static volatile sIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/zeus/columbus/util/u;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/miui/zeus/columbus/util/u;-><init>(III)V

    sput-object v0, Lcom/miui/zeus/columbus/common/SdkConfig;->SDK_VERSION:Lcom/miui/zeus/columbus/util/u;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/zeus/columbus/common/SdkConfig;->sContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/zeus/columbus/common/SdkConfig$1;

    invoke-direct {v0}, Lcom/miui/zeus/columbus/common/SdkConfig$1;-><init>()V

    sput-object v0, Lcom/miui/zeus/columbus/common/SdkConfig;->RECEIVER:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/zeus/columbus/common/SdkConfig;->saveDebuggerMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getSavedDebuggerMode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "debugger_mode_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    sput-object p2, Lcom/miui/zeus/columbus/common/SdkConfig;->APP_SECRET:Ljava/lang/String;

    sput-object p1, Lcom/miui/zeus/columbus/common/SdkConfig;->APP_KEY:Ljava/lang/String;

    sput-boolean p3, Lcom/miui/zeus/columbus/common/SdkConfig;->IS_SDK:Z

    invoke-static {p0}, Lcom/miui/zeus/columbus/util/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/miui/zeus/columbus/common/SdkConfig;->sContext:Landroid/content/Context;

    sget-object p0, Lcom/miui/zeus/columbus/common/SdkConfig;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/zeus/columbus/common/GlobalHolder;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/zeus/columbus/common/SdkConfig;->setInitDebugMode()V

    invoke-static {}, Lcom/miui/zeus/columbus/common/SdkConfig;->registerDebugReceiver()V

    return-void
.end method

.method private static registerDebugReceiver()V
    .locals 5

    sget-boolean v0, Lcom/miui/zeus/columbus/common/SdkConfig;->sIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/zeus/columbus/common/SdkConfig;->sIsRegistered:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/zeus/columbus/common/SdkConfig;->RECEIVER:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private static saveDebuggerMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "debugger_mode_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setInitDebugMode()V
    .locals 5

    sget-object v0, Lcom/miui/zeus/columbus/common/SdkConfig;->sContext:Landroid/content/Context;

    const-string v1, "debugger_mode"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/common/SdkConfig;->getSavedDebuggerMode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/zeus/columbus/common/SdkConfig;->sContext:Landroid/content/Context;

    const-string v2, "debugger_stage"

    invoke-static {v1, v2}, Lcom/miui/zeus/columbus/common/SdkConfig;->getSavedDebuggerMode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sput-boolean v4, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    invoke-static {}, Lcom/miui/zeus/columbus/util/i;->b()V

    goto :goto_0

    :cond_0
    const-string v2, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v3, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    invoke-static {}, Lcom/miui/zeus/columbus/util/i;->c()V

    :cond_1
    :goto_0
    const-string v2, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v4, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    goto :goto_1

    :cond_2
    const-string v2, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v3, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    :cond_3
    :goto_1
    const-string v2, "SdkConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
