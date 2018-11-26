.class public Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "WebCorrectionManager"

.field private static sInstance:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->sInstance:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->sInstance:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->sInstance:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getWebCorrection(Ljava/lang/String;)Lcom/miui/networkassistant/traffic/correction/IWebCorrection;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isMiWebCorrectSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isCmccWebCorrectSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    move-result-object v0

    goto :goto_0
.end method

.method public isCmccWebCorrectSupported(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSlotNumByImsi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCmccWebCorrection()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiWebCorrectSupported(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getWebCorrectionStatusRefreshTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isWebCorrectionSupported()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isServiceSupported(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isCmccWebCorrectSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isMiWebCorrectSupported(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
