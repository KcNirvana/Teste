.class Lcom/facebook/ads/internal/view/i/b$6;
.super Lcom/facebook/ads/internal/o/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/o/f<",
        "Lcom/facebook/ads/internal/view/i/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/b$6;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/o/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/internal/view/i/b/i;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/i/b/i;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/i;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/b$6;->a(Lcom/facebook/ads/internal/view/i/b/i;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/i;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/b$6;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b;->h()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/b$6;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/b/i;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/b/i;->a()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x409f400000000000L    # 2000.0

    cmpg-double p1, v2, v4

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/ads/internal/view/i/b;->a(IZZ)V

    return-void
.end method
