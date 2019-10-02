.class public Lcom/miui/video/biz/favor/usecase/FavorVideoCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "FavorVideoCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/database/OVFavorVideoEntity;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    return-void
.end method


# virtual methods
.method public buildGetMoreObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->getMoreFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public buildGetUnSyncObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0}, Lcom/miui/video/biz/favor/repository/FavorRepository;->getFavorVideoListFromDB()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->buildObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected buildObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/FavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->getFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
