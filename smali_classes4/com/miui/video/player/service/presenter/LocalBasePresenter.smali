.class public Lcom/miui/video/player/service/presenter/LocalBasePresenter;
.super Lcom/miui/video/player/service/presenter/BasePresenter;
.source "LocalBasePresenter.java"


# instance fields
.field public mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field public vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/BasePresenter;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/BasePresenter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/BasePresenter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/BasePresenter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iput-object p3, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-void
.end method


# virtual methods
.method public getVideoView()Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    return-object v0
.end method

.method public setPresenterManager(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-void
.end method

.method public setVideoView(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    return-void
.end method
