.class public Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "DeleteFavorPlayListCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseCase<",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        ">;"
    }
.end annotation


# instance fields
.field private favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    return-void
.end method


# virtual methods
.method public buildDeleteObservable(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/DeleteFavorPlayListCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/biz/favor/repository/FavorRepository;->deleteFavorPlayList(ILjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
