.class public abstract Lcom/miui/video/global/activity/BasePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "BasePreferenceActivity.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IActivityListener;
.implements Lcom/miui/video/framework/uri/PageInfoUtils$IPageInfo;


# instance fields
.field private KEY_PRIVACY_ENABLE:Ljava/lang/String;

.field private mDelegate:Ljava/lang/Class;

.field private mObject:Ljava/lang/Object;

.field private privacyEnableOnLastResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->privacyEnableOnLastResume:Z

    const-string v0, "KEY_PRIVACY_ENABLE"

    iput-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->mDelegate:Ljava/lang/Class;

    iput-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->mObject:Ljava/lang/Object;

    return-void
.end method

.method private init()V
    .locals 6

    :try_start_0
    const-string v0, "com.miui.internal.app.ActivityDelegate"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->mDelegate:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->mDelegate:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->mDelegate:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-class v2, Landroid/app/Activity;

    aput-object v2, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->mObject:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
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

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

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

.method protected needCheckInitModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->needCheckInitModule()Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->requestWindowFeature(I)Z

    move-result v1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    if-eqz v1, :cond_0

    const v1, 0x7f0c00d7

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->init()V

    invoke-static {}, Lcom/miui/video/base/utils/DataUtils;->getInstance()Lcom/miui/video/base/utils/DataUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/utils/DataUtils;->addUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->privacyEnableOnLastResume:Z

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/common/statistics/TrackerEventCreator;->createPageViewEvent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-static {}, Lcom/miui/video/base/utils/DataUtils;->getInstance()Lcom/miui/video/base/utils/DataUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/utils/DataUtils;->removeUI(Lcom/miui/video/framework/impl/IActivityListener;)Z

    invoke-static {p0}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atActivityPause(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-boolean v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->privacyEnableOnLastResume:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->unInit()V

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->handlePrivacyDisAllow()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "BUNDLE_KEY_FLAG_CLEAR_TOP"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "VideoLocal"

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getPageRefer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->privacyEnableOnLastResume:Z

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/video/base/common/statistics/MiDevUtils;->atActivityResume(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->KEY_PRIVACY_ENABLE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/video/global/activity/BasePreferenceActivity;->privacyEnableOnLastResume:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    return-void
.end method

.method public onTitleBarClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->finish()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "com.miui.video.ACTION_FINISH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->finish()V

    :cond_0
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
