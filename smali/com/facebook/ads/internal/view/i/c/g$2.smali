.class Lcom/facebook/ads/internal/view/i/c/g$2;
.super Lcom/facebook/ads/internal/o/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/o/f<",
        "Lcom/facebook/ads/internal/view/i/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/g$2;->a:Lcom/facebook/ads/internal/view/i/c/g;

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
            "Lcom/facebook/ads/internal/view/i/b/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/i/b/c;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/c;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/g$2;->a(Lcom/facebook/ads/internal/view/i/b/c;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/c;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/g$2;->a:Lcom/facebook/ads/internal/view/i/c/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/c/g;->setVisibility(I)V

    return-void
.end method
