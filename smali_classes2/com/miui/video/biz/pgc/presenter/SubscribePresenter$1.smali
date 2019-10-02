.class Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "SubscribePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->subscriptionAuthor(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

.field final synthetic val$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$subscribe:Z


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;Lcom/miui/video/framework/base/ui/BaseUIEntity;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->this$0:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iput-boolean p3, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$subscribe:Z

    iput-object p4, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/video/common/library/base/BaseObserver;->onFail(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->this$0:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->this$0:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$subscribe:Z

    iget-object v3, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;->subscribeResult(ZLjava/lang/Throwable;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getResult()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iget-boolean v2, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$subscribe:Z

    invoke-virtual {v0, v2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setSubscribe(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->this$0:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->this$0:Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$subscribe:Z

    iget-object v3, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;->subscribeResult(ZLjava/lang/Throwable;ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;->onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
