.class public Lcom/miui/video/biz/history/usecase/HistoryCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "HistoryCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/database/VideoEntity;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mHistoryRepository:Lcom/miui/video/biz/history/repository/HistoryRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/history/repository/HistoryRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/history/usecase/HistoryCase;->mHistoryRepository:Lcom/miui/video/biz/history/repository/HistoryRepository;

    return-void
.end method


# virtual methods
.method public buildAllHistoryObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/history/usecase/HistoryCase;->mHistoryRepository:Lcom/miui/video/biz/history/repository/HistoryRepository;

    invoke-interface {v0}, Lcom/miui/video/biz/history/repository/HistoryRepository;->getAllHistoryList()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected buildObservable(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/biz/history/usecase/HistoryCase;->mHistoryRepository:Lcom/miui/video/biz/history/repository/HistoryRepository;

    invoke-interface {p1}, Lcom/miui/video/biz/history/repository/HistoryRepository;->getLocalHistoryList()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/history/usecase/HistoryCase;->buildObservable(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
