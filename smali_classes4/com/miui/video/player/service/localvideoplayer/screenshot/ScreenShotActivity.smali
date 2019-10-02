.class public Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;
.super Lcom/miui/video/base/core/CoreActivity;
.source "ScreenShotActivity.java"


# static fields
.field private static final KEY_Configuration:Ljava/lang/String; = "key_Configuration_Changed"

.field public static final KEY_IsFullScreen:Ljava/lang/String; = "key_IsFullScreen"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final REQUEST_MEDIA_PROJECTION:I = 0x2893

.field private static final TAG:Ljava/lang/String; = "ScreenShotActivity"


# instance fields
.field private mIsConfigurationChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/base/core/CoreActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mIsConfigurationChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected closeShareFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShareFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method protected getFragmentContainerId()I
    .locals 1

    const v0, 0x1020002

    return v0
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/base/core/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2893

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-direct {p1, p2, p3, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)V

    invoke-static {p0, v0}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->startScreenShot(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/base/core/CoreActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mIsConfigurationChanged:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/core/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_Configuration_Changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mIsConfigurationChanged:Z

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mIsConfigurationChanged:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->requestScreenShot()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mIsConfigurationChanged:Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->closeShareFragment()V

    invoke-super {p0, p1}, Lcom/miui/video/base/core/CoreActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->requestScreenShot()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/core/CoreActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_Configuration_Changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->mIsConfigurationChanged:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/core/CoreActivity;->onResume()V

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->hideNavigationBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/base/core/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_Configuration_Changed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public requestScreenShot()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2893

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_screen_shot_failure_tips:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected setUpShareFragment(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShareFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchAndShowNavigation(Landroid/view/Window;)V

    move-object v2, v0

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->setData(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentContainerId()I

    move-result p1

    const-string p2, "ShareFragment"

    invoke-virtual {v1, p1, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentContainerId()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentContainerId()I

    move-result p3

    invoke-virtual {v0, p3, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ScreenShotActivity;->getFragmentContainerId()I

    move-result p3

    invoke-virtual {v0, p3, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalidate container id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
