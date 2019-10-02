.class public Lcom/facebook/ads/internal/view/l;
.super Lcom/facebook/ads/internal/view/o;


# instance fields
.field private final d:Lcom/facebook/ads/internal/adapters/b/k;

.field private final e:Lcom/facebook/ads/internal/x/a;

.field private final f:Lcom/facebook/ads/internal/w/b/w;

.field private final g:Lcom/facebook/ads/internal/x/a$a;

.field private h:Lcom/facebook/ads/internal/view/component/a/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/k;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V

    new-instance p1, Lcom/facebook/ads/internal/w/b/w;

    invoke-direct {p1}, Lcom/facebook/ads/internal/w/b/w;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/l;->f:Lcom/facebook/ads/internal/w/b/w;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/l;->i:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    new-instance p1, Lcom/facebook/ads/internal/view/l$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/l$1;-><init>(Lcom/facebook/ads/internal/view/l;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/l;->g:Lcom/facebook/ads/internal/x/a$a;

    new-instance p1, Lcom/facebook/ads/internal/x/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/l;->g:Lcom/facebook/ads/internal/x/a$a;

    const/16 p4, 0x64

    invoke-direct {p1, p0, p4, p3}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/x/a$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/l;->e:Lcom/facebook/ads/internal/x/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l;->e:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/x/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/l;->f:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/l;->e:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/adapters/b/k;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/view/component/a/l;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    return-object p0
.end method

.method private setUpContent(I)V
    .locals 9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/b/l;

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v1, Lcom/facebook/ads/internal/view/c/d;

    invoke-direct {v1, v6}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->i()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/d;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/view/c/d;->a(II)Lcom/facebook/ads/internal/view/c/d;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/l$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/l$3;-><init>(Lcom/facebook/ads/internal/view/l;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/c/d;->a(Lcom/facebook/ads/internal/view/c/e;)Lcom/facebook/ads/internal/view/c/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/view/component/a/e$a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/l;->a:Lcom/facebook/ads/internal/s/c;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/l;->e:Lcom/facebook/ads/internal/x/a;

    iget-object v8, p0, Lcom/facebook/ads/internal/view/l;->f:Lcom/facebook/ads/internal/w/b/w;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/internal/view/component/a/e$a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/b/k;Landroid/view/View;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    sget v1, Lcom/facebook/ads/internal/view/i;->a:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a/e$a;->a(I)Lcom/facebook/ads/internal/view/component/a/e$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/component/a/e$a;->b(I)Lcom/facebook/ads/internal/view/component/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/e$a;->a()Lcom/facebook/ads/internal/view/component/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/view/component/a/d;->a(Lcom/facebook/ads/internal/view/component/a/e;)Lcom/facebook/ads/internal/view/component/a/c;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaHeightIfAvailable()I

    move-result v3

    sub-int/2addr v1, v3

    sget-object v3, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaWidthIfAvailable()I

    move-result v4

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/l;->i:Z

    invoke-static {v0, v1, v3, v4}, Lcom/facebook/ads/internal/view/component/a/g;->a(Lcom/facebook/ads/internal/view/component/a/e;IIZ)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/l$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/l$4;-><init>(Lcom/facebook/ads/internal/view/l;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaHeightIfAvailable()I

    move-result v5

    sget-object v0, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->getExactMediaWidthIfAvailable()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/c;->a()Z

    move-result v7

    move-object v1, p0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/internal/view/l;->a(Lcom/facebook/ads/internal/view/component/a/c;Lcom/facebook/ads/internal/view/component/a/l;Lcom/facebook/ads/internal/view/u$a;IIZI)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-super {p0, p3, p1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/b/k;)V

    new-instance p1, Lcom/facebook/ads/internal/view/l$2;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/l$2;-><init>(Lcom/facebook/ads/internal/view/l;)V

    invoke-virtual {p3, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/l;->setUpContent(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a_(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/l;->e()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/l;->f()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/l;->i:Z

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/l;->setUpContent(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/l;->e:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/l;->f:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/l;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/l;->d:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->l(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->e:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->h:Lcom/facebook/ads/internal/view/component/a/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->g()V

    :cond_1
    invoke-super {p0}, Lcom/facebook/ads/internal/view/o;->onDestroy()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l;->f:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
