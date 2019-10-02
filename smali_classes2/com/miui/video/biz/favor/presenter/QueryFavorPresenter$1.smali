.class Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "QueryFavorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;->this$0:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;->this$0:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;->this$0:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;

    invoke-interface {v0, p1}, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;->queryFavorStateFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;->this$0:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;->this$0:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;

    invoke-interface {v0, p1}, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;->queryFavorStateSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter$1;->onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
