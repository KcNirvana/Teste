.class public abstract Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;
.super Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;
.source "CoreAppCompatActivity.java"

# interfaces
.implements Lcom/miui/video/framework/uri/PageInfoUtils$IPageInfo;


# instance fields
.field private KEY_PRIVACY_ENABLE:Ljava/lang/String;

.field protected privacyEnableOnLastResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->privacyEnableOnLastResume:Z

    const-string v0, "KEY_PRIVACY_ENABLE"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->getIntent()Landroid/content/Intent;

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
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->needCheckInitModule()Z

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->privacyEnableOnLastResume:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atActivityPause(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->onResume()V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->privacyEnableOnLastResume:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->unInit()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->handlePrivacyDisAllow()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "BUNDLE_KEY_FLAG_CLEAR_TOP"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "VideoLocal"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->getPageRefer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->privacyEnableOnLastResume:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atActivityResume(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->privacyEnableOnLastResume:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "SERVICE_TOKEN_NEED_USER_INTERACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getCurResumeActivty()Landroid/app/Activity;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const-string p1, "VideoMiAccountManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request activity for result on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p3, Landroid/content/Intent;

    const/16 p1, 0x321

    invoke-virtual {p0, p3, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
