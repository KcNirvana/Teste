.class public Lcom/miui/luckymoney/service/CloudControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudControlReceiver"


# instance fields
.field private commonConfig:Lcom/miui/luckymoney/config/CommonConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private needToCheckUpdate()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getLastTimeCheckUpdateConfig()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v6}, Lcom/miui/luckymoney/config/CommonConfig;->getHotStartTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v6}, Lcom/miui/luckymoney/config/CommonConfig;->getHotEndTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getHotFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getDefaultUpdateFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private syncConfigFromServer()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;

    invoke-direct {v0}, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-static {p1}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->needToCheckUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CloudControlReceiver"

    const-string/jumbo v1, "check CloudControl config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setLastTimeCheckUpdateConfig(J)V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/CloudControlReceiver;->syncConfigFromServer()V

    invoke-static {p1}, Lcom/miui/luckymoney/utils/ResFileUtils;->cleanPNGRes(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CloudControlReceiver"

    const-string/jumbo v1, "upload settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;

    invoke-direct {v0}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    new-instance v0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;

    iget-object v1, p0, Lcom/miui/luckymoney/service/CloudControlReceiver;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getMasterSwitchConfig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;-><init>(Ljava/lang/String;)V

    return-void
.end method
