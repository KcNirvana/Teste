.class public Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "SubscribePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/biz/pgc/presenter/view/SubscribeView;",
        ">;"
    }
.end annotation


# instance fields
.field private userCase:Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;


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

    new-instance v0, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->userCase:Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->userCase:Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public subscriptionAuthor(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->isSubscribe()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;->userCase:Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;

    new-instance v2, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;

    invoke-direct {v2, p2, v0}, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/miui/video/biz/pgc/presenter/SubscribePresenter$1;-><init>(Lcom/miui/video/biz/pgc/presenter/SubscribePresenter;Lcom/miui/video/framework/base/ui/BaseUIEntity;ZLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
