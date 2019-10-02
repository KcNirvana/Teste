.class public Lcom/miui/video/biz/favor/presenter/FavorPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "FavorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/biz/favor/view/FavorView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FavorPresenter"


# instance fields
.field private mDeleteFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;

.field private mDeleteVideoCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;

.field private mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

.field private mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

.field private mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

.field private mIsLoadMoreFavorVideo:Z

.field private mIsLoadMorePlayListData:Z

.field private mSyncFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;

.field private mSyncVideoCase:Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMoreFavorVideo:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMorePlayListData:Z

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/favor/presenter/FavorPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMoreFavorVideo:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/video/biz/favor/presenter/FavorPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMorePlayListData:Z

    return p1
.end method


# virtual methods
.method public createCases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteVideoCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mSyncVideoCase:Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mSyncFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteVideoCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public deleteFavorPlayList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;->buildDeleteObservable(ILjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/favor/presenter/FavorPresenter$6;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$6;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public deleteFavorVideo(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteVideoCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mDeleteVideoCase:Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;->buildDeleteObservable(ILjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/favor/presenter/FavorPresenter$5;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$5;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/favor/usecase/DeleteFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getFavorPlayList(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    new-instance v1, Lcom/miui/video/biz/favor/presenter/FavorPresenter$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$3;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getFavorVideo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    new-instance v1, Lcom/miui/video/biz/favor/presenter/FavorPresenter$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$1;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getMoreFavorPlayList(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMorePlayListData:Z

    if-eqz v0, :cond_0

    const-string v0, "FavorPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreFavorPlayList  mIsLoadMorePlayListData == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMorePlayListData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMorePlayListData:Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->buildMoreObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/FavorPresenter$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$4;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getMoreFavorVideo(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMoreFavorVideo:Z

    if-eqz v0, :cond_0

    const-string v0, "FavorPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMoreFavorVideo  mIsLoadMoreFavorVideo == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMoreFavorVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mIsLoadMoreFavorVideo:Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->buildGetMoreObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/FavorPresenter$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$2;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getUnSyncFavorPlayList()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetPlayListCase:Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;

    invoke-virtual {v1}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->buildGetUnSyncObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/favor/presenter/FavorPresenter$8;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$8;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getUnSyncFavorVideo()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mGetVideoCase:Lcom/miui/video/biz/favor/usecase/FavorVideoCase;

    invoke-virtual {v1}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->buildGetUnSyncObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/favor/presenter/FavorPresenter$7;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$7;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public syncFavorPlayList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mSyncFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mSyncFavorPlayListCase:Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;->buildSyncObservable(ILjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$10;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/favor/usecase/SyncFavorPlayListCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public syncFavorVideo(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mSyncVideoCase:Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/FavorPresenter;->mSyncVideoCase:Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;->buildSyncObservable(ILjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/favor/presenter/FavorPresenter$9;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/favor/presenter/FavorPresenter$9;-><init>(Lcom/miui/video/biz/favor/presenter/FavorPresenter;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/favor/usecase/SyncFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
