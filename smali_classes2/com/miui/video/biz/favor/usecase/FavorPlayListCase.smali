.class public Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "FavorPlayListCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
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

    iput-object p1, p0, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    return-void
.end method


# virtual methods
.method public buildGetUnSyncObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0}, Lcom/miui/video/biz/favor/repository/FavorRepository;->getFavorPlayListFromDB()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public buildMoreObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->getMoreFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->buildObservable(Ljava/lang/String;)Lio/reactivex/Observable;

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
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/FavorPlayListCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->getFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
