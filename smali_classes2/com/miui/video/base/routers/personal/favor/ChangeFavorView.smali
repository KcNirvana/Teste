.class public interface abstract Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;
.super Ljava/lang/Object;
.source "ChangeFavorView.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IView;


# virtual methods
.method public abstract addFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract addFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract addFavorVideoFail(Ljava/lang/String;)V
.end method

.method public abstract addFavorVideoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract deleteFavorPlayListFail(Ljava/lang/String;)V
.end method

.method public abstract deleteFavorPlayListSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract deleteFavorVideoFail(Ljava/lang/String;)V
.end method

.method public abstract deleteFavorVideoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end method

.method public abstract queryFavorStateFail(Ljava/lang/String;)V
.end method

.method public abstract queryFavorStateSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
            ">;)V"
        }
    .end annotation
.end method
