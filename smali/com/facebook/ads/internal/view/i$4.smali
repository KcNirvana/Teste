.class Lcom/facebook/ads/internal/view/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$4;->a:Lcom/facebook/ads/internal/view/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$4;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->g(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$4;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->f(Lcom/facebook/ads/internal/view/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$4;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->g(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/internal/view/i$b;->a()V

    :cond_0
    return-void
.end method
