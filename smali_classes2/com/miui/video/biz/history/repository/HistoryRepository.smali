.class public interface abstract Lcom/miui/video/biz/history/repository/HistoryRepository;
.super Ljava/lang/Object;
.source "HistoryRepository.java"


# virtual methods
.method public abstract getAllHistoryList()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLocalHistoryList()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getOnlineHistoryList()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;>;"
        }
    .end annotation
.end method
