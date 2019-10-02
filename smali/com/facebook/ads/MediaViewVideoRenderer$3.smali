.class Lcom/facebook/ads/MediaViewVideoRenderer$3;
.super Lcom/facebook/ads/internal/view/i/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/MediaViewVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/MediaViewVideoRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$3;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/i;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer$3;->a(Lcom/facebook/ads/internal/view/i/b/i;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/i;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer$3;->a:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPaused()V

    return-void
.end method
