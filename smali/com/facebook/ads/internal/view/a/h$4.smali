.class Lcom/facebook/ads/internal/view/a/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/a/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a/f;

.field final synthetic b:Lcom/facebook/ads/internal/view/a/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a/h;Lcom/facebook/ads/internal/view/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/h$4;->b:Lcom/facebook/ads/internal/view/a/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a/h$4;->a:Lcom/facebook/ads/internal/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h$4;->a:Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/a/f;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h$4;->b:Lcom/facebook/ads/internal/view/a/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/view/a/h;->b:Lcom/facebook/ads/internal/view/a/e;

    invoke-interface {p1}, Lcom/facebook/ads/internal/view/a/e;->d()V

    return-void
.end method
