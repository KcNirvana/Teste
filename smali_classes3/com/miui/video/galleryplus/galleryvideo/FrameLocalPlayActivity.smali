.class public Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;
.super Lcom/miui/video/base/widget/CoreFragmentActivity;
.source "FrameLocalPlayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameLocalPlayActivity"


# instance fields
.field private mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

.field private mResultData:Landroid/content/Intent;

.field private mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    return-object p0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryStateFactory;->create(Landroid/content/Intent;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private initWindow(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isStartWhenLocked()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_27_API()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getGalleryResult()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public grantPermissionAndContinue()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/base/utils/PermissionUtils;->requestAllPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    :goto_0
    return-void
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

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FrameLocalPlayActivity"

    const-string v0, "onCreate: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onCreate(I)V

    sget p1, Lcom/miui/video/galleryplus/R$layout;->activity_gallery_player:I

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->handleIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->initWindow(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchNotch(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->grantPermissionAndContinue()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onDestroy(I)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->onMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "FrameLocalPlayActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.miui.video.extra.is_secret"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->parsePathFromUri(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "FrameLocalPlayActivity"

    const-string v0, "onNewIntent open the same url return"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;)V

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;)V

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/video/base/utils/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;I[Ljava/lang/String;[I)V

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

.method public setGalleryResult(ILandroid/content/Intent;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 3

    instance-of v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    :goto_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->attachGalleryState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    sget p1, Lcom/miui/video/galleryplus/R$id;->container:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->mCurrentFragment:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->runFragment(ILandroid/support/v4/app/Fragment;IZ)V

    return-void
.end method
