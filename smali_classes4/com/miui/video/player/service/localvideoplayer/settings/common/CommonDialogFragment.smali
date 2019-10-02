.class public Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseDialogFragment;
.source "CommonDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonDialogFragment"


# instance fields
.field private mLandscapeWidth:I

.field private vContentView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    return-void
.end method

.method private handlerLandscapeNavigation(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/utils/NavigationUtils;->isNavigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->updateUIByNavigationOnRight(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->updateUIByNavigationOnLeft(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->updateUIByNavigationOnRight(Landroid/content/Context;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private updateUIByNavigationOnLeft(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, v1, v1, p1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    return-void
.end method

.method private updateUIByNavigationOnRight(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, v1, v1, p1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    return-void
.end method


# virtual methods
.method protected getLandscapeWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseDialogFragment;->onCreateDialog()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->vContentView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->vContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchAndShowNavigation(Landroid/view/Window;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseDialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->safeDismiss()V

    return-void
.end method

.method public safeDismiss()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->dismiss()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->hideNavigationBar(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setContentView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->vContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->subtitle_container_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    :cond_1
    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->handlerLandscapeNavigation(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->vContentView:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->vContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->mLandscapeWidth:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->setContentView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
