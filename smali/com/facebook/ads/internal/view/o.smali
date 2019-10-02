.class public abstract Lcom/facebook/ads/internal/view/o;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;


# instance fields
.field protected final a:Lcom/facebook/ads/internal/s/c;

.field protected final b:Lcom/facebook/ads/internal/view/i;

.field protected c:Lcom/facebook/ads/internal/adapters/b/b;

.field private final d:Lcom/facebook/ads/internal/view/a$a;

.field private final e:Lcom/facebook/ads/internal/w/b/t;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/o;->a:Lcom/facebook/ads/internal/s/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/o;->d:Lcom/facebook/ads/internal/view/a$a;

    new-instance p1, Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/o;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/o;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object p3

    sget-object v0, Lcom/facebook/ads/internal/view/i$a;->a:Lcom/facebook/ads/internal/view/i$a;

    invoke-direct {p1, p2, p3, v0}, Lcom/facebook/ads/internal/view/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/i$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    new-instance p1, Lcom/facebook/ads/internal/w/b/t;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/w/b/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/o;->e:Lcom/facebook/ads/internal/w/b/t;

    return-void
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/o;->removeAllViews()V

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;ZI)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->e:Lcom/facebook/ads/internal/w/b/t;

    sget-object v1, Lcom/facebook/ads/internal/w/b/t$a;->a:Lcom/facebook/ads/internal/w/b/t$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/w/b/t;->a(Lcom/facebook/ads/internal/w/b/t$a;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/o;->a()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    sget v3, Lcom/facebook/ads/internal/view/i;->a:I

    :goto_0
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/o;->c:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/o;->c:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/b;->b()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object p1

    :goto_1
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/internal/view/i;->a:I

    invoke-direct {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/h;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p0, v0, p3}, Lcom/facebook/ads/internal/view/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/b/h;->d(Z)I

    move-result p1

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/o;->d:Lcom/facebook/ads/internal/view/a$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/o;->d:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {p1, p0, v2}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;I)V

    if-eqz p2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/o;->e:Lcom/facebook/ads/internal/w/b/t;

    sget-object p2, Lcom/facebook/ads/internal/w/b/t$a;->b:Lcom/facebook/ads/internal/w/b/t$a;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/w/b/t;->a(Lcom/facebook/ads/internal/w/b/t$a;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/b/k;)V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->e:Lcom/facebook/ads/internal/w/b/t;

    invoke-virtual {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/w/b/t;->a(Landroid/view/Window;)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->b()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/o;->c:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/o;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/d;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    new-instance v1, Lcom/facebook/ads/internal/view/o$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/o$1;-><init>(Lcom/facebook/ads/internal/view/o;Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i;->setToolbarListener(Lcom/facebook/ads/internal/view/i$b;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/o;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/f/a;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/ads/internal/view/component/a/c;Lcom/facebook/ads/internal/view/component/a/l;Lcom/facebook/ads/internal/view/u$a;IIZI)V
    .locals 1
    .param p2    # Lcom/facebook/ads/internal/view/component/a/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/internal/view/u$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p6, p7}, Lcom/facebook/ads/internal/view/o;->a(Landroid/view/View;ZI)V

    if-eqz p2, :cond_1

    iget-object p6, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    const/4 v0, 0x4

    invoke-virtual {p6, v0}, Lcom/facebook/ads/internal/view/i;->setPageDetailsVisibility(I)V

    iget-object p6, p0, Lcom/facebook/ads/internal/view/o;->e:Lcom/facebook/ads/internal/w/b/t;

    sget-object v0, Lcom/facebook/ads/internal/w/b/t$a;->a:Lcom/facebook/ads/internal/w/b/t$a;

    invoke-virtual {p6, v0}, Lcom/facebook/ads/internal/w/b/t;->a(Lcom/facebook/ads/internal/w/b/t$a;)V

    const/4 p6, 0x1

    if-ne p7, p6, :cond_0

    new-instance p1, Lcom/facebook/ads/internal/view/u;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/o;->getContext()Landroid/content/Context;

    move-result-object p5

    sget p6, Lcom/facebook/ads/internal/view/i;->a:I

    sub-int/2addr p4, p6

    const/4 p6, 0x0

    invoke-direct {p1, p5, p2, p4, p6}, Lcom/facebook/ads/internal/view/u;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/component/a/l;II)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/o;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Lcom/facebook/ads/internal/view/u;->setDragListener(Lcom/facebook/ads/internal/view/u$a;)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p5, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object p6, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget p6, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p6, p5

    sget p5, Lcom/facebook/ads/internal/view/i;->a:I

    invoke-direct {p4, p6, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p5, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p5, p4}, Lcom/facebook/ads/internal/view/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p4, 0xb

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/view/component/a/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "extra_hints"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/o;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getAdEventManager()Lcom/facebook/ads/internal/s/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->a:Lcom/facebook/ads/internal/s/c;

    return-object v0
.end method

.method protected getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->d:Lcom/facebook/ads/internal/view/a$a;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i;->d()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/o;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/facebook/ads/internal/view/o$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/view/o$2;-><init>(Lcom/facebook/ads/internal/view/o;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->e:Lcom/facebook/ads/internal/w/b/t;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/t;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/o;->b:Lcom/facebook/ads/internal/view/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i;->setToolbarListener(Lcom/facebook/ads/internal/view/i$b;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/o;->a()V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    return-void
.end method
