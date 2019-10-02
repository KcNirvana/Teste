.class Lcom/miui/video/base/account/GetUserPresenter$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "GetUserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/account/GetUserPresenter;->getUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/base/common/net/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/account/GetUserPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/GetUserPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/GetUserPresenter$1;->this$0:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter$1;->this$0:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0}, Lcom/miui/video/base/account/GetUserPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter$1;->this$0:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0}, Lcom/miui/video/base/account/GetUserPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/account/GetUserInfoView;

    invoke-interface {v0, p1}, Lcom/miui/video/base/account/GetUserInfoView;->getUserInfoFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter$1;->this$0:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0}, Lcom/miui/video/base/account/GetUserPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter$1;->this$0:Lcom/miui/video/base/account/GetUserPresenter;

    invoke-virtual {v0}, Lcom/miui/video/base/account/GetUserPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/account/GetUserInfoView;

    invoke-interface {v0, p1}, Lcom/miui/video/base/account/GetUserInfoView;->getUserInfoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-virtual {p0, p1}, Lcom/miui/video/base/account/GetUserPresenter$1;->onSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V

    return-void
.end method
