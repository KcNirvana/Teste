.class public Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;
.super Lcom/miui/video/base/widget/CoreFragmentActivity;
.source "LocalPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;
    }
.end annotation


# static fields
.field public static final ACTION_VIDEO_PLAY:Ljava/lang/String; = "duokan.intent.action.VIDEO_PLAY"

.field public static final KEY_START_ACTIVITY_WHEN_LOCKED:Ljava/lang/String; = "StartActivityWhenLocked"

.field public static final TAG:Ljava/lang/String; = "LocalPlayerActivity"


# instance fields
.field private mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

.field private mEventMonitor:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;

.field private mIntent:Landroid/content/Intent;

.field private mIsFromCameraAndLocked:Z

.field private mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field private mRef:Ljava/lang/String;

.field private mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mUri:Landroid/net/Uri;

.field private mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;-><init>()V

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->doAfterPermissionGranted()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIsFromCameraAndLocked:Z

    return p0
.end method

.method private checkPermissionDetail()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->needShowPermissionDetail(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x903

    invoke-static {p0, v0}, Lcom/miui/video/base/utils/PermissionUtils;->startPermissionDetailForResult(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->grantPermissionAndContinue()V

    :goto_0
    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "duokan.intent.action.VIDEO_PLAY"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "duokan.intent.action.VIDEO_PLAY"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private doAfterPermissionGranted()V
    .locals 7

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mContext:Landroid/content/Context;

    const-string v3, "SyncSetting"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIsFromCameraAndLocked:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "url_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mVideoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mRef:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mVideoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    sget-object v1, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive Intent getData mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ; getAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; mIsFromCameraAndLocked = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIsFromCameraAndLocked:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mVideoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mRef:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->play(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->finish()V

    return-void
.end method

.method private grantPermissionAndContinue()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/base/utils/PermissionUtils;->requestAllPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->doAfterPermissionGranted()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handlePrivacyDisAllow()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onPrivacyDisAllowed()V

    const/4 v0, 0x1

    return v0
.end method

.method protected initBase()V
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x4d3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->grantPermissionAndContinue()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x904

    if-ne p2, v0, :cond_1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->onPermissionDetailResult(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->grantPermissionAndContinue()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarLightMode(Landroid/view/Window;Z)Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate & Build.version.sdk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/local/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {p1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isNotchEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchNotch(Landroid/view/Window;)V

    :cond_0
    sget p1, Lcom/miui/video/biz/player/local/R$layout;->lp_activity_player:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->setContentView(I)V

    sget p1, Lcom/miui/video/biz/player/local/R$id;->controller:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/controller/ControllerView;

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    new-instance p1, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;

    invoke-direct {p1, p0, p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;-><init>(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mEventMonitor:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;

    iget-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mEventMonitor:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->start()V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/base/common/task/WeakHandler;Lcom/miui/video/player/service/controller/ControllerView;Z)V

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->checkPermissionDetail()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mEventMonitor:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mEventMonitor:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityDestroy()V

    iput-object v1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p1, p0, p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->checkPermissionDetail()V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onNewIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityPause()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$1;-><init>(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;)V

    new-instance v3, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$2;-><init>(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;)V

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/video/base/utils/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;I[Ljava/lang/String;[I)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->checkPermissionDetail()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onRestart()V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityReStart()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onResume()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->setFullScreenMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityResume()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mIsFromCameraAndLocked:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/video/common/library/utils/SystemUtils;->setLockWindowFlags(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/video/common/library/utils/SystemUtils;->setWindowFlags(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityStart()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->setFullScreenMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityStop()V

    :cond_0
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
