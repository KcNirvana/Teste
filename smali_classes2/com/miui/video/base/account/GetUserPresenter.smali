.class public Lcom/miui/video/base/account/GetUserPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "GetUserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/base/account/GetUserInfoView;",
        ">;"
    }
.end annotation


# instance fields
.field private mGetUserInfoCase:Lcom/miui/video/base/account/GetUserInfoCase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/account/GetUserPresenter;->createCases()Ljava/util/List;

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

    new-instance v0, Lcom/miui/video/base/account/GetUserInfoCase;

    invoke-direct {v0}, Lcom/miui/video/base/account/GetUserInfoCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter;->mGetUserInfoCase:Lcom/miui/video/base/account/GetUserInfoCase;

    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/base/account/GetUserPresenter;->mGetUserInfoCase:Lcom/miui/video/base/account/GetUserInfoCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfo()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/account/GetUserPresenter;->mGetUserInfoCase:Lcom/miui/video/base/account/GetUserInfoCase;

    iget-object v1, p0, Lcom/miui/video/base/account/GetUserPresenter;->mGetUserInfoCase:Lcom/miui/video/base/account/GetUserInfoCase;

    invoke-virtual {v1}, Lcom/miui/video/base/account/GetUserInfoCase;->buildQueryObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/video/base/account/GetUserPresenter$1;

    invoke-direct {v2, p0}, Lcom/miui/video/base/account/GetUserPresenter$1;-><init>(Lcom/miui/video/base/account/GetUserPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/account/GetUserInfoCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
