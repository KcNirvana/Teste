.class public Lcom/miui/video/biz/ugc/MomentFragment;
.super Lcom/miui/video/service/base/BaseTabFragment;
.source "MomentFragment.java"

# interfaces
.implements Lcom/miui/video/biz/ugc/view/UGCView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/BaseTabFragment<",
        "Lcom/miui/video/biz/ugc/presenter/UGCPresenter;",
        ">;",
        "Lcom/miui/video/biz/ugc/view/UGCView;"
    }
.end annotation


# static fields
.field public static final PAGE_MAIN_TAB_MOMENT:Ljava/lang/String; = "maintab_moment"

.field public static final TAG_UI_UGC_VIDEO:Ljava/lang/String; = "ui_ugc_video"


# instance fields
.field private isFirstCreate:Z

.field private isHide:Z

.field private isPause:Z

.field private isPauseFromCurrent:Z

.field private lastPlayPosition:J

.field private mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkStateReceiver:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;

.field private mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/RelativeLayout;

.field private onStateChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

.field private playRunnable:Ljava/lang/Runnable;

.field private playRunnableWhenPageShow:Ljava/lang/Runnable;

.field private preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

.field private prePosition:I

.field private restart:Z

.field private vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/service/base/BaseTabFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->lastPlayPosition:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->restart:Z

    new-instance v0, Lcom/miui/video/biz/ugc/MomentFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/MomentFragment$1;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->onStateChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    new-instance v0, Lcom/miui/video/biz/ugc/MomentFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/MomentFragment$2;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnableWhenPageShow:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/ugc/MomentFragment;->trackLike(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/ugc/MomentFragment;->trackToVmate(Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/ugc/MomentFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->restart:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/biz/ugc/MomentFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->restart:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/biz/ugc/MomentFragment;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/ugc/MomentFragment;->switchCardAndPlay(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/ugc/MomentFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->tryLoadMore(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/card/UIUGCVideo;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/video/biz/ugc/MomentFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->cacheNext(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/video/biz/ugc/MomentFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/ugc/MomentFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isHide:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/ugc/MomentFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->lastPlayPosition:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/ugc/MomentFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->lastPlayPosition:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/ugc/MomentFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPause:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/widget/RefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/ugc/MomentFragment;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/ugc/MomentFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->prePosition:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/ugc/MomentFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/ugc/MomentFragment;->startPlay(ILjava/lang/String;)V

    return-void
.end method

.method private cacheNext(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-static {}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->getInstance()Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->media_url:Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->cacheVideo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private registerNetworkReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;

    new-instance v2, Lcom/miui/video/biz/ugc/MomentFragment$11;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/ugc/MomentFragment$11;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;-><init>(Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;)V

    iput-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mNetworkStateReceiver:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mNetworkStateReceiver:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->setAvailable(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mNetworkStateReceiver:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UGCDetail,Lifecycle"

    const-string v1, "registerReceiver fail"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private startPlay(ILjava/lang/String;)V
    .locals 4

    const-string v0, "timeShowed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay---start--="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->prePosition:I

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->setUGCEntity(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "ui_ugc_video"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->attachPlayer(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->reset()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    :cond_1
    const-string p1, "timeShowed"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPlay---end--="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private switchCardAndPlay(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;I)I
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "timeShowed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCardAndPlay---start--="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->getsInstance(Landroid/content/Context;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    :cond_0
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    :cond_1
    const-string v1, "ui_ugc_video"

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->prePosition:I

    if-ne v0, p3, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$3;

    invoke-direct {v1, p0, v0, p3}, Lcom/miui/video/biz/ugc/MomentFragment$3;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;II)V

    iput-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    iget-object p2, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    const-string p1, "timeShowed"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchCardAndPlay---end--="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p1, p3, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->cacheNext(I)V

    return p3
.end method

.method private trackLike(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "small_video"

    const-string v2, "small_video"

    invoke-static {v1, v2, p1}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method private trackToVmate(Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;

    invoke-direct {v0, p1, p2}, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;-><init>(Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast p1, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)V

    return-void
.end method

.method private tryLoadMore(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast p1, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->loadMore()V

    :cond_0
    return-void
.end method

.method private unregisterNetworkReceiver()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mNetworkStateReceiver:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UGCDetail,Lifecycle"

    const-string v1, "Receiver already unregistered"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/biz/ugc/presenter/UGCPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->createPresenter()Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected hideStatusBarView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hideTabView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_ugc_rl_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/MomentFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/miui/video/biz/ugc/R$color;->c_black_70:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_ugc_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/MomentFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    sget v0, Lcom/miui/video/biz/ugc/R$id;->ui_ugc_viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/MomentFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v1}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PagerSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableHeaderTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v0, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/MomentFragment;->onStateChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;-><init>(Ljava/util/List;Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->prePosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Ljp/wasabeef/recyclerview/animators/FadeInAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2}, Ljp/wasabeef/recyclerview/animators/FadeInAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/MomentFragment$4;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/MomentFragment$5;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/MomentFragment$6;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 2

    const-string v0, "moment"

    const-string v1, "initViewsValue"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moment"

    const-string v1, "refreshData"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->refreshData()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->showLoading()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/service/base/BaseTabFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->prePosition:I

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/ugc/MomentFragment;->startPlay(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/service/base/BaseTabFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->registerNetworkReceiver()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isFirstCreate:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {}, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->releasePlayer()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPresenter:Lcom/miui/video/common/library/base/impl/IPresenter;

    check-cast v0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->dispose()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/video/service/base/BaseTabFragment;->onHiddenChanged(Z)V

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isHide:Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->getsInstance(Landroid/content/Context;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->cancelScreenOn(Landroid/app/Activity;)V

    invoke-static {}, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->getPlayPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->lastPlayPosition:J

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v0, "small_video_pause_back"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->keepScreenOn(Landroid/app/Activity;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->restart:Z

    iget-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPause:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isFirstCreate:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v0, "small_video_continue_back"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isFirstCreate:Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnableWhenPageShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "small_video"

    const-string v1, ""

    const-string v2, "small_video_page_expose"

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    :goto_2
    return-void
.end method

.method public onLoadMoreFail()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onLoadMoreSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/ugc/MomentFragment$10;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/util/List;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRefreshFail()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const-string v0, "moment"

    const-string v1, "onRefreshFail11"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moment"

    const-string v1, "onRefreshFail22"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$9;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/MomentFragment$9;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->showRetry(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onRefreshSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moment"

    const-string v1, "onRefreshSuccess"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->hideLoading()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "moment"

    const-string v2, "onRefreshSuccess11"

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mProgressLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/miui/video/biz/ugc/R$color;->c_transparent:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mAdapter:Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    new-instance v0, Lcom/miui/video/biz/ugc/MomentFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/MomentFragment$7;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "moment"

    const-string v0, "onRefreshSuccess22"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    new-instance v0, Lcom/miui/video/biz/ugc/MomentFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/MomentFragment$8;-><init>(Lcom/miui/video/biz/ugc/MomentFragment;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->showRetry(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onStart()V

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->getsInstance(Landroid/content/Context;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->restart:Z

    iget v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->prePosition:I

    const-string v1, "small_video_continue_back"

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/ugc/MomentFragment;->startPlay(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isFirstCreate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPauseFromCurrent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "small_video"

    const-string v2, ""

    const-string v3, "small_video_page_expose"

    invoke-static {v1, v2, v3}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPause:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPauseFromCurrent:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPause:Z

    iget-boolean v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isHide:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isPauseFromCurrent:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->vRefresh:Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment;->playRunnableWhenPageShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->getPlayPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->lastPlayPosition:J

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->isHide:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->mPlayer:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const-string v1, "small_video_pause_back"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment;->preItem:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/MomentFragment;->unregisterNetworkReceiver()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/ugc/R$layout;->fragment_ugc:I

    return v0
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "maintab_moment"

    return-object v0
.end method
