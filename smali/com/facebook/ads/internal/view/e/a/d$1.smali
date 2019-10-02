.class Lcom/facebook/ads/internal/view/e/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/a/d;->setUpVideo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/a/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d$1;->a:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/d$1;->a:Lcom/facebook/ads/internal/view/e/a/d;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/e/a/d;->a(Lcom/facebook/ads/internal/view/e/a/d;)Lcom/facebook/ads/internal/view/i/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/l;->performClick()Z

    return-void
.end method
