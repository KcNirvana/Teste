.class public Lcom/miui/video/service/share/net/ShareRepositoryImpl;
.super Ljava/lang/Object;
.source "ShareRepositoryImpl.java"


# instance fields
.field private mApi:Lcom/miui/video/service/share/net/ShareApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/miui/video/service/share/net/ShareApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/share/net/ShareApi;

    iput-object v0, p0, Lcom/miui/video/service/share/net/ShareRepositoryImpl;->mApi:Lcom/miui/video/service/share/net/ShareApi;

    return-void
.end method


# virtual methods
.method public getShortUrl(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/share/net/ShareRepositoryImpl;->mApi:Lcom/miui/video/service/share/net/ShareApi;

    const-string v1, "v1"

    invoke-interface {v0, p1, v1}, Lcom/miui/video/service/share/net/ShareApi;->getShortLink(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
