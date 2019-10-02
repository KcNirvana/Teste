.class public Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "ChangeFavorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;",
        ">;"
    }
.end annotation


# instance fields
.field private mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

.field private mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->buildAddPlayListObservable(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$3;-><init>(Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->buildAddObservable(Lcom/miui/video/base/database/OVFavorVideoEntity;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$1;-><init>(Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method protected createCases()Ljava/util/List;
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

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->buildDetelePlayListObservable(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$4;-><init>(Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->mChangeFavorVideoCase:Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->buildDeteleObservable(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter$2;-><init>(Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
