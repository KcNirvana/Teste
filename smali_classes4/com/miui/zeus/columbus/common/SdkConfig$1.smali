.class final Lcom/miui/zeus/columbus/common/SdkConfig$1;
.super Landroid/content/BroadcastReceiver;
.source "SdkConfig.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SdkConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "debugger_mode"

    invoke-static {p1, v0, p2}, Lcom/miui/zeus/columbus/common/SdkConfig;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    invoke-static {}, Lcom/miui/zeus/columbus/util/i;->b()V

    goto :goto_0

    :cond_1
    const-string v0, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "debugger_mode"

    invoke-static {p1, v0, p2}, Lcom/miui/zeus/columbus/common/SdkConfig;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/miui/zeus/columbus/common/SdkConfig;->DEBUG:Z

    invoke-static {}, Lcom/miui/zeus/columbus/util/i;->c()V

    goto :goto_0

    :cond_2
    const-string v0, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "debugger_stage"

    invoke-static {p1, v0, p2}, Lcom/miui/zeus/columbus/common/SdkConfig;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z

    goto :goto_0

    :cond_3
    const-string v0, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "debugger_stage"

    invoke-static {p1, v0, p2}, Lcom/miui/zeus/columbus/common/SdkConfig;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/miui/zeus/columbus/common/SdkConfig;->USE_STAGING:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SdkConfig"

    const-string v0, "DebugReceiver e : "

    invoke-static {p2, v0, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method
