.class Lcom/google/ads/interactivemedia/v3/internal/iy$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/iy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/internal/ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ba;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/iy;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/iy;Lcom/google/ads/interactivemedia/v3/internal/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;Z)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;)Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    move-result-object v0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->c:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;)Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    move-result-object v0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->d:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;Landroid/view/Surface;Z)V

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;)Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    move-result-object p1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->c:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(Z)V

    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$1;->b:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;Z)Z

    return-void
.end method
