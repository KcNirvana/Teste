.class public Lcom/facebook/ads/internal/adapters/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/ads/internal/adapters/t;

.field private c:Lcom/facebook/ads/internal/adapters/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/s;Lcom/facebook/ads/internal/adapters/t;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->a:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->d:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->e:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->f:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->g:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->h:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->i:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->j:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->a:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/t;->d(Lcom/facebook/ads/internal/adapters/s;)V

    goto/16 :goto_0

    :cond_0
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->d:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/s;Lcom/facebook/ads/AdError;)V

    goto/16 :goto_0

    :cond_1
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->e:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/t;->b(Lcom/facebook/ads/internal/adapters/s;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->f:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/s;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->g:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-interface {p1}, Lcom/facebook/ads/internal/adapters/t;->a()V

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->i:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/t;->e(Lcom/facebook/ads/internal/adapters/s;)V

    goto :goto_0

    :cond_5
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->h:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/u;->c:Lcom/facebook/ads/internal/adapters/s;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/t;->f(Lcom/facebook/ads/internal/adapters/s;)V

    goto :goto_0

    :cond_6
    sget-object p2, Lcom/facebook/ads/internal/view/i/b/aa;->j:Lcom/facebook/ads/internal/view/i/b/aa;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/u;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/u;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-interface {p1}, Lcom/facebook/ads/internal/adapters/t;->b()V

    :cond_7
    :goto_0
    return-void
.end method
