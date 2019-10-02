.class Lcom/facebook/ads/internal/t/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/t/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/t/e;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/t/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/t/e$a;-><init>(Lcom/facebook/ads/internal/t/e;)V

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->k(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/k;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "nti"

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/t/e;->k(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/t/k;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->l(Lcom/facebook/ads/internal/t/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nhs"

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/t/e;->l(Lcom/facebook/ads/internal/t/e;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->f(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/x/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/e$a;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e$a;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/e$a;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/t/e$a;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object v0, v0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object v0, v0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/i;->e(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/w/b/w;->d()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FBAudienceNetworkLog"

    const-string v0, "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->t(Lcom/facebook/ads/internal/t/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->F(Landroid/content/Context;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->c()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/w/b/w;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "FBAudienceNetworkLog"

    const-string v0, "Ad cannot be clicked before it is viewed."

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "FBAudienceNetworkLog"

    const-string v0, "Clicks happened too fast."

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->t(Lcom/facebook/ads/internal/t/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/i;->d(Ljava/util/Map;)V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->t(Lcom/facebook/ads/internal/t/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/i;->c(Ljava/util/Map;)V

    :cond_5
    new-instance p1, Lcom/facebook/ads/internal/t/e$a$1;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/t/e$a$1;-><init>(Lcom/facebook/ads/internal/t/e$a;)V

    new-instance v0, Lcom/facebook/ads/internal/t/e$a$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/t/e$a$2;-><init>(Lcom/facebook/ads/internal/t/e$a;)V

    invoke-static {}, Lcom/facebook/ads/internal/w/a/b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/w/b/g;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e$a;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/t/e$a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->u(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->u(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/t/e;->i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/facebook/ads/internal/view/c/c;->setBounds(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->u(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->u(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/c;->a()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->a(Z)V

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->v(Lcom/facebook/ads/internal/t/e;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->v(Lcom/facebook/ads/internal/t/e;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
