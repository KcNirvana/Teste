.class final Lcom/ooyala/pulse/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/ooyala/adtech/Ad;

.field b:Lcom/ooyala/adtech/Request;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ooyala/pulse/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ooyala/adtech/AdRequester;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    iput-object p2, p0, Lcom/ooyala/pulse/b;->d:Lcom/ooyala/adtech/AdRequester;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/b;->b:Lcom/ooyala/adtech/Request;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/b;->d:Lcom/ooyala/adtech/AdRequester;

    iget-object v1, p0, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    new-instance v2, Lcom/ooyala/pulse/b$1;

    invoke-direct {v2, p0}, Lcom/ooyala/pulse/b$1;-><init>(Lcom/ooyala/pulse/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/AdRequester;->requestThirdParty(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/pulse/b;->b:Lcom/ooyala/adtech/Request;

    :cond_0
    return-void
.end method

.method final a(Lcom/ooyala/pulse/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/b;->b:Lcom/ooyala/adtech/Request;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    invoke-interface {p1, v0}, Lcom/ooyala/pulse/b$a;->a(Lcom/ooyala/adtech/Ad;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ooyala/pulse/b;->a()V

    return-void
.end method
