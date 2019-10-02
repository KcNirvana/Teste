.class public Lcom/google/ads/interactivemedia/v3/internal/ib;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/jd$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/ib$a;,
        Lcom/google/ads/interactivemedia/v3/internal/ib$c;,
        Lcom/google/ads/interactivemedia/v3/internal/ib$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/jd;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ib$b;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ib$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ib$c;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ib$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/ib$b;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/ib$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->d:Lcom/google/ads/interactivemedia/v3/internal/ib$b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->f:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->g:Z

    return-void
.end method

.method private static a(IF)I
    .locals 0

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->f:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ib;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->f:Landroid/app/Activity;

    return-object p1
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;F)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .locals 3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->left()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(IF)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->top()I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(IF)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->height()I

    move-result v2

    invoke-static {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(IF)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->width()I

    move-result p0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(IF)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ib;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/ib;)Lcom/google/ads/interactivemedia/v3/internal/jd;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Application;
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->j()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/ib;)Lcom/google/ads/interactivemedia/v3/internal/ib$a;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    return-object p0
.end method

.method private i()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private j()Landroid/app/Application;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;
    .locals 9

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->g()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->h()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->f()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->e()D

    move-result-wide v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->d:Lcom/google/ads/interactivemedia/v3/internal/ib$b;

    invoke-interface {v6}, Lcom/google/ads/interactivemedia/v3/internal/ib$b;->a()J

    move-result-wide v6

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->vastEvent(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, v6, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewAttached(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$b;->build()Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->viewability:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->viewability:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Ljava/lang/String;

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->g:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->j()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ib$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ib;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->j()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->e:Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public e()D
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-double v1, v2

    int-to-double v3, v0

    div-double/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public f()Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->createFromLocationOnScreen(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->i()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;F)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->create(IIII)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->i()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;F)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v0

    return-object v0
.end method
