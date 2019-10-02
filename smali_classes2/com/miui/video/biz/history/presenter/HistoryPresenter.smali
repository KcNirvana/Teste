.class public Lcom/miui/video/biz/history/presenter/HistoryPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "HistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/biz/history/view/HistoryView;",
        ">;"
    }
.end annotation


# instance fields
.field private mCase:Lcom/miui/video/biz/history/usecase/HistoryCase;

.field private mOnlineCase:Lcom/miui/video/biz/history/usecase/OVHistoryCase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public createCases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/history/usecase/HistoryCase;

    new-instance v1, Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;

    invoke-direct {v1}, Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/video/biz/history/usecase/HistoryCase;-><init>(Lcom/miui/video/biz/history/repository/HistoryRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCase:Lcom/miui/video/biz/history/usecase/HistoryCase;

    new-instance v0, Lcom/miui/video/biz/history/usecase/OVHistoryCase;

    new-instance v1, Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;

    invoke-direct {v1}, Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/video/biz/history/usecase/OVHistoryCase;-><init>(Lcom/miui/video/biz/history/repository/HistoryRepository;)V

    iput-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mOnlineCase:Lcom/miui/video/biz/history/usecase/OVHistoryCase;

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCase:Lcom/miui/video/biz/history/usecase/HistoryCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mOnlineCase:Lcom/miui/video/biz/history/usecase/OVHistoryCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public getAllHistory()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCase:Lcom/miui/video/biz/history/usecase/HistoryCase;

    iget-object v1, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCase:Lcom/miui/video/biz/history/usecase/HistoryCase;

    invoke-virtual {v1}, Lcom/miui/video/biz/history/usecase/HistoryCase;->buildAllHistoryObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/history/presenter/HistoryPresenter$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter$1;-><init>(Lcom/miui/video/biz/history/presenter/HistoryPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/history/usecase/HistoryCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public getHistory(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mCase:Lcom/miui/video/biz/history/usecase/HistoryCase;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/history/presenter/HistoryPresenter$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter$2;-><init>(Lcom/miui/video/biz/history/presenter/HistoryPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/history/usecase/HistoryCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->mOnlineCase:Lcom/miui/video/biz/history/usecase/OVHistoryCase;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;-><init>(Lcom/miui/video/biz/history/presenter/HistoryPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/history/usecase/OVHistoryCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    :goto_0
    return-void
.end method
