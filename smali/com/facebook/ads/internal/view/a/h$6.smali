.class Lcom/facebook/ads/internal/view/a/h$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/a/h;->a(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a/f;

.field final synthetic b:Lcom/facebook/ads/internal/f/c;

.field final synthetic c:Lcom/facebook/ads/internal/view/a/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a/h;Lcom/facebook/ads/internal/view/a/f;Lcom/facebook/ads/internal/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/h$6;->c:Lcom/facebook/ads/internal/view/a/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a/h$6;->a:Lcom/facebook/ads/internal/view/a/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/a/h$6;->b:Lcom/facebook/ads/internal/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h$6;->a:Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/a/f;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/h$6;->c:Lcom/facebook/ads/internal/view/a/h;

    iget-object p1, p1, Lcom/facebook/ads/internal/view/a/h;->b:Lcom/facebook/ads/internal/view/a/e;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/h$6;->b:Lcom/facebook/ads/internal/f/c;

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/view/a/e;->a(Lcom/facebook/ads/internal/f/c;)V

    return-void
.end method
