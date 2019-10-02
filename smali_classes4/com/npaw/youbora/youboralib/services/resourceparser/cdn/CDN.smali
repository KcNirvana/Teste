.class public Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;
.super Ljava/lang/Object;
.source "CDN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;
    }
.end annotation


# instance fields
.field private cdnInfoListener:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;

.field private code:Ljava/lang/String;

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->cdnInfoListener:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->code:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->setHeaders(Ljava/util/List;)V

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    invoke-virtual {p0, p3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->setRequestHeaders(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getCdnInfoListener()Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->cdnInfoListener:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public setCdnInfoListener(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->cdnInfoListener:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->code:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->headers:Ljava/util/List;

    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->requestHeaders:Ljava/util/Map;

    return-void
.end method
