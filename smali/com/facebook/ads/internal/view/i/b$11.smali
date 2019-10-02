.class Lcom/facebook/ads/internal/view/i/b$11;
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
        "Lcom/facebook/ads/internal/view/i/b/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/b$11;->a:Lcom/facebook/ads/internal/view/i/b;

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
            "Lcom/facebook/ads/internal/view/i/b/y;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/i/b/y;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/y;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/b$11;->a(Lcom/facebook/ads/internal/view/i/b/y;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/y;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/b$11;->a:Lcom/facebook/ads/internal/view/i/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/b;->b()V

    return-void
.end method
