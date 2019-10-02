.class Lcom/miui/video/service/language/LanguagePresenter$1;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "LanguagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/language/LanguagePresenter;->getLanguageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/common/net/model/LanguageEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/language/LanguagePresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/service/language/LanguagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/language/LanguagePresenter$1;->this$0:Lcom/miui/video/service/language/LanguagePresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter$1;->this$0:Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/language/LanguagePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter$1;->this$0:Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/language/LanguagePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/language/LanguageView;

    invoke-interface {v0, p1}, Lcom/miui/video/service/language/LanguageView;->onGetLanguageFail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/language/LanguagePresenter$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter$1;->this$0:Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/language/LanguagePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter$1;->this$0:Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {v0}, Lcom/miui/video/service/language/LanguagePresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/language/LanguageView;

    invoke-interface {v0, p1}, Lcom/miui/video/service/language/LanguageView;->onGetLanguageSuccess(Ljava/util/List;)V

    return-void
.end method
