.class final Lcom/google/ads/interactivemedia/v3/internal/cz$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/df;

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field public c:Lcom/google/ads/interactivemedia/v3/internal/dd;

.field public d:Lcom/google/ads/interactivemedia/v3/internal/cx;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/df;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/df;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/df;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/df;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->e:I

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/cx;)V
    .locals 1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dd;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/dd;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/cx;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->d:Lcom/google/ads/interactivemedia/v3/internal/cx;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->l:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/cz$a;->a()V

    return-void
.end method
