.class Lcom/facebook/ads/internal/view/i/b$2;
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
        "Lcom/facebook/ads/internal/view/i/b/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/b$2;->a:Lcom/facebook/ads/internal/view/i/b;

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
            "Lcom/facebook/ads/internal/view/i/b/t;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/i/b/t;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/t;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/b$2;->a(Lcom/facebook/ads/internal/view/i/b/t;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/t;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/b$2;->a:Lcom/facebook/ads/internal/view/i/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/b$2;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b;->j()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/b$2;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b;->j()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/view/i/b;->a(II)V

    return-void
.end method
