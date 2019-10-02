.class Lcom/google/ads/interactivemedia/v3/internal/cf$2;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/cf;->a(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/cf;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cf;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$2;->b:Lcom/google/ads/interactivemedia/v3/internal/cf;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$2;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$2;->b:Lcom/google/ads/interactivemedia/v3/internal/cf;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cf;->c(Lcom/google/ads/interactivemedia/v3/internal/cf;)Lcom/google/ads/interactivemedia/v3/internal/cf$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$2;->b:Lcom/google/ads/interactivemedia/v3/internal/cf;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cf;->b(Lcom/google/ads/interactivemedia/v3/internal/cf;)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$2;->a:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cf$a;->a(ILjava/io/IOException;)V

    return-void
.end method
