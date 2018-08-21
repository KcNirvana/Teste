.class public Lcom/miui/personalassistant/util/ContentCatcherUtil;
.super Ljava/lang/Object;
.source "ContentCatcherUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentCatcherUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchCloudSync(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content_catcher_network_enabled_personal_assistant"

    invoke-static {v0, v1, p1}, Lcom/miui/personalassistant/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private static switchContentCatcher(Ljava/lang/String;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1, p0, p1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static switchExpressCatcher(Z)V
    .locals 3

    const-string/jumbo v0, "express"

    invoke-static {v0, p0}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchContentCatcher(Ljava/lang/String;Z)V

    const-string/jumbo v0, "ContentCatcherUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchExpressCatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static switchFavoriteCatcher(Z)V
    .locals 3

    const-string/jumbo v0, "favorite"

    invoke-static {v0, p0}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchContentCatcher(Ljava/lang/String;Z)V

    const-string/jumbo v0, "ContentCatcherUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchFavoriteCatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static switchPaymentCatcher(Z)V
    .locals 3

    const-string/jumbo v0, "payment"

    invoke-static {v0, p0}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchContentCatcher(Ljava/lang/String;Z)V

    const-string/jumbo v0, "ContentCatcherUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchPaymentCatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static switchShoppingCatcher(Z)V
    .locals 3

    const-string/jumbo v0, "shopping"

    invoke-static {v0, p0}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchContentCatcher(Ljava/lang/String;Z)V

    const-string/jumbo v0, "ContentCatcherUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchShoppingCatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
