.class public Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "QueryFavorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

.field private mQueryFavorVideoCase:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
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

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    new-instance v0, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mFavorRepositoryImpl:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mQueryFavorVideoCase:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mQueryFavorVideoCase:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mQueryFavorVideoCase:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

    iget-object v1, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->mQueryFavorVideoCase:Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;->buildQueryObservable(Lcom/miui/video/base/common/data/QueryFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;-><init>(Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
