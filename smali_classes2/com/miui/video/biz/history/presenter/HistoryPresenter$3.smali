.class Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "HistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getHistory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/database/OVHistoryEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/history/presenter/HistoryPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/history/presenter/HistoryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;->this$0:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;->this$0:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;->this$0:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/history/view/HistoryView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/history/view/HistoryView;->getOnlineHistoryFail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;->this$0:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/history/presenter/HistoryPresenter$3;->this$0:Lcom/miui/video/biz/history/presenter/HistoryPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/history/presenter/HistoryPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/history/view/HistoryView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/history/view/HistoryView;->getOnlineHistorySuccess(Ljava/util/List;)V

    return-void
.end method
