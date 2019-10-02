.class Lcom/facebook/ads/internal/view/l$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/l;->setUpContent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/l$3;->a:Lcom/facebook/ads/internal/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l$3;->a:Lcom/facebook/ads/internal/view/l;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/l;->b(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/x/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->a()V

    :cond_0
    return-void
.end method
