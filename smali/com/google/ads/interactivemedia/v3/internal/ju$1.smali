.class Lcom/google/ads/interactivemedia/v3/internal/ju$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/jq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/ju;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ju;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ju;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Lcom/google/ads/interactivemedia/v3/internal/ju;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ju$a;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/ju$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method
