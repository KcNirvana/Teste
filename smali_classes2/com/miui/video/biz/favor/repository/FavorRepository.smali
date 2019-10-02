.class public interface abstract Lcom/miui/video/biz/favor/repository/FavorRepository;
.super Ljava/lang/Object;
.source "FavorRepository.java"


# virtual methods
.method public abstract addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lio/reactivex/Observable;
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
.end method

.method public abstract addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)Lio/reactivex/Observable;
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
.end method

.method public abstract deleteFavorPlayList(ILjava/util/List;)Lio/reactivex/Observable;
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
.end method

.method public abstract deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;
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
.end method

.method public abstract deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;
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
.end method

.method public abstract deleteFavorVideoList(ILjava/util/List;)Lio/reactivex/Observable;
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
.end method

.method public abstract getFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;
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
.end method

.method public abstract getFavorPlayListFromDB()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;
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
.end method

.method public abstract getFavorVideoListFromDB()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getMoreFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;
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
.end method

.method public abstract getMoreFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;
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
.end method

.method public abstract queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/data/QueryFavorBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract syncFavorPlayList(ILjava/util/List;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract syncFavorVideoList(ILjava/util/List;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation
.end method
