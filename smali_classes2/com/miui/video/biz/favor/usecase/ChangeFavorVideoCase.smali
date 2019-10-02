.class public Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "ChangeFavorVideoCase.java"


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

    iput-object p1, p0, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    return-void
.end method


# virtual methods
.method public buildAddObservable(Lcom/miui/video/base/database/OVFavorVideoEntity;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public buildAddPlayListObservable(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public buildDeteleObservable(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/data/ChangeFavorBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public buildDetelePlayListObservable(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/data/ChangeFavorBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/ChangeFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
