.class public Lcom/miui/personalassistant/util/AlipayController;
.super Ljava/lang/Object;
.source "AlipayController.java"


# static fields
.field public static final KEY_AUTH_CODE:Ljava/lang/String; = "key_auth_code"

.field private static final TAG:Ljava/lang/String; = "AlipayController"

.field private static mInstance:Lcom/miui/personalassistant/util/AlipayController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/util/AlipayController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/util/AlipayController$1;-><init>(Lcom/miui/personalassistant/util/AlipayController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/AlipayController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/util/AlipayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/util/AlipayController;->gotoAlipaySdkActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/AlipayController;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/util/AlipayController;->mInstance:Lcom/miui/personalassistant/util/AlipayController;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/util/AlipayController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/util/AlipayController;->mInstance:Lcom/miui/personalassistant/util/AlipayController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/util/AlipayController;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/AlipayController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/util/AlipayController;->mInstance:Lcom/miui/personalassistant/util/AlipayController;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/util/AlipayController;->mInstance:Lcom/miui/personalassistant/util/AlipayController;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private gotoAlipaySdkActivity(Ljava/lang/String;)V
    .locals 7

    const v6, 0x10008000

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "key_auth_code"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "AlipayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gotoAlipaySdkActivity authCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AlipayController"

    const-string/jumbo v4, "PendingIntent.CanceledException"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isDataEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/model/AlipayUserInfo;->readUserInfo(Landroid/content/Context;)Lcom/miui/personalassistant/model/AlipayUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startGoAlipaySdk()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/AlipayController;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlipayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startGoAlipaySdk isDataEmpty=true mHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/util/AlipayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", doAuth prepare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/miui/personalassistant/model/AlipayUserInfo;->saveUserInfo(Landroid/content/Context;Lcom/miui/personalassistant/model/AlipayUserInfo;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_alipay_paycode"

    invoke-static {v0, v1, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/AlipayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/personalassistant/util/AlipayController;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/AlipayUtil;->doAuth(Landroid/content/Context;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AlipayController"

    const-string/jumbo v1, "startGoAlipaySdk isDataEmpty=false to AlipaySdkCodeActivity"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/util/AlipayController;->gotoAlipaySdkActivity(Ljava/lang/String;)V

    goto :goto_0
.end method
