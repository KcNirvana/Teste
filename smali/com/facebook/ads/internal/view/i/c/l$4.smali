.class Lcom/facebook/ads/internal/view/i/c/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i/c/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/l$4;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/l$4;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/l;->b(Lcom/facebook/ads/internal/view/i/c/l;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/facebook/ads/internal/view/i/c/l$5;->a:[I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/l$4;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/l;->c(Lcom/facebook/ads/internal/view/i/c/l;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getState()Lcom/facebook/ads/internal/view/i/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/d/d;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/l$4;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/l;->e(Lcom/facebook/ads/internal/view/i/c/l;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/l$4;->a:Lcom/facebook/ads/internal/view/i/c/l;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/l;->d(Lcom/facebook/ads/internal/view/i/c/l;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/view/i/a/a;->b:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
