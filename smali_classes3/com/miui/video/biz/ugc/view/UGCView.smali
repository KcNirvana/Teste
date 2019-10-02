.class public interface abstract Lcom/miui/video/biz/ugc/view/UGCView;
.super Ljava/lang/Object;
.source "UGCView.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IView;


# virtual methods
.method public abstract onLoadMoreFail()V
.end method

.method public abstract onLoadMoreSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRefreshFail()V
.end method

.method public abstract onRefreshSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;)V"
        }
    .end annotation
.end method
