.class Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "FeedbackSubmitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->submit(Lcom/miui/video/feedback/model/FeedbackContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/presenter/view/FeedbackView;

    invoke-interface {v0}, Lcom/miui/video/feedback/presenter/view/FeedbackView;->hideLoading()V

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/presenter/view/FeedbackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/miui/video/feedback/presenter/view/FeedbackView;->onSubmitResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/presenter/view/FeedbackView;

    invoke-interface {v0}, Lcom/miui/video/feedback/presenter/view/FeedbackView;->hideLoading()V

    iget-object v0, p0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->this$0:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/presenter/view/FeedbackView;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/miui/video/feedback/presenter/view/FeedbackView;->onSubmitResult(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter$2;->onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
