.class Lcom/facebook/ads/internal/view/a/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/a/j;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a/f;

.field final synthetic b:Lcom/facebook/ads/internal/f/c;

.field final synthetic c:Lcom/facebook/ads/internal/view/a/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a/j;Lcom/facebook/ads/internal/view/a/f;Lcom/facebook/ads/internal/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/j$2;->c:Lcom/facebook/ads/internal/view/a/j;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a/j$2;->a:Lcom/facebook/ads/internal/view/a/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/a/j$2;->b:Lcom/facebook/ads/internal/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/j$2;->a:Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/a/f;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/j$2;->c:Lcom/facebook/ads/internal/view/a/j;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/j;->a(Lcom/facebook/ads/internal/view/a/j;)Lcom/facebook/ads/internal/view/a/e;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/j$2;->b:Lcom/facebook/ads/internal/f/c;

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/view/a/e;->a(Lcom/facebook/ads/internal/f/c;)V

    return-void
.end method
