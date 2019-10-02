.class public interface abstract Lcom/miui/video/biz/history/view/HistoryView;
.super Ljava/lang/Object;
.source "HistoryView.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IView;


# virtual methods
.method public abstract getAllHistoryFail(Ljava/lang/String;)V
.end method

.method public abstract getAllHistorySuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLocalHistoryFail(Ljava/lang/String;)V
.end method

.method public abstract getLocalHistorySuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOnlineHistoryFail(Ljava/lang/String;)V
.end method

.method public abstract getOnlineHistorySuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;)V"
        }
    .end annotation
.end method
