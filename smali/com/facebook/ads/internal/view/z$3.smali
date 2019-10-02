.class Lcom/facebook/ads/internal/view/z$3;
.super Lcom/facebook/ads/internal/view/i/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/z;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/z;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/z$3;->a:Lcom/facebook/ads/internal/view/z;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/c;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/z$3;->a(Lcom/facebook/ads/internal/view/i/b/c;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/z$3;->a:Lcom/facebook/ads/internal/view/z;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/z;->a(Lcom/facebook/ads/internal/view/z;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    const-string v1, "videoInterstitalEvent"

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/o/d;)V

    return-void
.end method
