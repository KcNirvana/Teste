.class public abstract Lcom/miui/video/base/core/CoreActivity;
.super Lcom/miui/video/base/core/BaseActivity;
.source "CoreActivity.java"

# interfaces
.implements Lcom/miui/video/framework/uri/PageInfoUtils$IPageInfo;


# instance fields
.field private KEY_PRIVACY_ENABLE:Ljava/lang/String;

.field private privacyEnableOnLastResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/base/core/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/core/CoreActivity;->privacyEnableOnLastResume:Z

    const-string v0, "KEY_PRIVACY_ENABLE"

    iput-object v0, p0, Lcom/miui/video/base/core/CoreActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageRefer()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/uri/PageInfoUtils;->getPageRefer(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handlePrivacyDisAllow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initBase()V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method protected needCheckInitModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/base/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/core/CoreActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/core/CoreActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/base/core/CoreActivity;->privacyEnableOnLastResume:Z

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/core/CoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerEventCreator;->createPageViewEvent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/core/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atActivityPause(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    invoke-super {p0}, Lcom/miui/video/base/core/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/miui/video/base/core/CoreActivity;->privacyEnableOnLastResume:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->unInit()V

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->handlePrivacyDisAllow()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "BUNDLE_KEY_FLAG_CLEAR_TOP"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "VideoLocal"

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->getPageRefer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/base/core/CoreActivity;->privacyEnableOnLastResume:Z

    invoke-virtual {p0}, Lcom/miui/video/base/core/CoreActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atActivityResume(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/core/CoreActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/video/base/core/CoreActivity;->privacyEnableOnLastResume:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/miui/video/base/core/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
