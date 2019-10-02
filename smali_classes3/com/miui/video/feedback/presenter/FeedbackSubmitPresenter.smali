.class public Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "FeedbackSubmitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/feedback/presenter/view/FeedbackView;",
        ">;"
    }
.end annotation


# instance fields
.field private initUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;

.field private submitUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;

    invoke-direct {v0}, Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->initUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;

    new-instance v0, Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;

    invoke-direct {v0}, Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->submitUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->initUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->submitUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/presenter/view/FeedbackView;

    invoke-interface {v0}, Lcom/miui/video/feedback/presenter/view/FeedbackView;->showLoading()V

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->initUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$1;

    invoke-direct {v2, p0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$1;-><init>(Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public submit(Lcom/miui/video/feedback/model/FeedbackContent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/presenter/view/FeedbackView;

    invoke-interface {v0}, Lcom/miui/video/feedback/presenter/view/FeedbackView;->showLoading()V

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->submitUseCase:Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;

    new-instance v1, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;-><init>(Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
