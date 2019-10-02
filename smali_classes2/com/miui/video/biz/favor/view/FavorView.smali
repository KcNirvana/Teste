.class public interface abstract Lcom/miui/video/biz/favor/view/FavorView;
.super Ljava/lang/Object;
.source "FavorView.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IView;


# virtual methods
.method public abstract deleteFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract deleteFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract deleteFavorVideoListFail(Ljava/lang/String;)V
.end method

.method public abstract deleteFavorVideoListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract getFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract getFavorPlayListSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFavorVideoFail(Ljava/lang/String;)V
.end method

.method public abstract getFavorVideoSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMoreFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract getMoreFavorPlayListSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMoreFavorVideoFail(Ljava/lang/String;)V
.end method

.method public abstract getMoreFavorVideoSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUnSyncFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract getUnSyncFavorPlayListSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUnSyncFavorVideoFail(Ljava/lang/String;)V
.end method

.method public abstract getUnSyncFavorVideoSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract syncFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract syncFavorVideoFail(Ljava/lang/String;)V
.end method

.method public abstract syncFavorVideoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method
