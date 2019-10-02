.class public Lcom/miui/video/base/account/GetUserInfoCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "GetUserInfoCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseCase<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/base/common/net/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mApi:Lcom/miui/video/base/common/net/api/RetroApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseCase;-><init>()V

    const-class v0, Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/api/RetroApi;

    iput-object v0, p0, Lcom/miui/video/base/account/GetUserInfoCase;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    return-void
.end method


# virtual methods
.method public buildQueryObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/UserInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/account/GetUserInfoCase;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-interface {v0}, Lcom/miui/video/base/common/net/api/RetroApi;->getUserInfo()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
