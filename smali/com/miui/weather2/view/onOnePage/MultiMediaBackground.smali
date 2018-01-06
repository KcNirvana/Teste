.class public Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;
.super Lcom/miui/weather2/view/onOnePage/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;
    }
.end annotation


# static fields
.field private static v:Z


# instance fields
.field private A:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

.field private B:Ljava/lang/Runnable;

.field public f:Landroid/widget/ImageView;

.field g:Landroid/view/animation/LinearInterpolator;

.field private h:Landroid/widget/VideoView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:D

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private w:Landroid/app/AlertDialog;

.field private x:Z

.field private y:I

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->q:D

    const/16 v0, 0x63

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t:Z

    iput-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->u:Z

    iput-object v3, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->x:Z

    iput v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->z:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Lcom/miui/weather2/view/onOnePage/y;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->A:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->g:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/aq;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/aq;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->B:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    return p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a([Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;ZJ)V

    return-void
.end method

.method private a([Landroid/view/View;Ljava/lang/Runnable;ZJ)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->g:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ak;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/weather2/view/onOnePage/ak;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Ljava/lang/Runnable;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b([Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b([Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;ZJ)V

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->s()V

    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r()V

    return-void
.end method

.method static synthetic e(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p()V

    return-void
.end method

.method static synthetic i(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->q()V

    return-void
.end method

.method static synthetic j(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o()V

    return-void
.end method

.method static synthetic k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private k()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->v()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/weather2/view/onOnePage/at;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/at;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b([Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a()V

    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;J)V

    invoke-super {p0, v5}, Lcom/miui/weather2/view/onOnePage/a;->setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/a;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/onOnePage/au;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/au;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t()V

    return-void
.end method

.method static synthetic m(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r:I

    return v0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->i()Lcom/bumptech/glide/i;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ax;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ax;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/b;->c:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/a;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ba;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ba;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t:Z

    return v0
.end method

.method static synthetic o(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->s:I

    return v0
.end method

.method private o()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "Wth2:MultiMediaBackground"

    const-string v1, "inflateFirstScreenAdTagView() invalid tag data, return"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const v0, 0x7f0f0162

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    const v0, 0x7f0f0163

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTagX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getTagY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Wth2:MultiMediaBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflateFirstScreenAdTagView() left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTagDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTagText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/bd;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/bd;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic p(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    return-object v0
.end method

.method private p()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/weather2/view/onOnePage/be;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/be;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b([Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private q()V
    .locals 6

    const/16 v5, 0x11

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "Wth2:MultiMediaBackground"

    const-string v1, "changeAdTagVisibility()() invalid tag data, return"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "Wth2:MultiMediaBackground"

    const-string v1, "changeAdTagVisibility()"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->v:Z

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sput-boolean v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->v:Z

    :cond_3
    :goto_1
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->v:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTagText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/weather2/view/onOnePage/z;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/z;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b([Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900fa

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ac;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ac;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fb

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ab;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ab;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic r(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->x:Z

    return v0
.end method

.method static synthetic s(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->A:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    return-object v0
.end method

.method private s()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->x:Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ad;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ad;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ae;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ae;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ah;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ah;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k()V

    goto :goto_0
.end method

.method private setDynamicBackgroundWeatherTypeAndIsNight(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/b/h;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/h;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r:I

    iget-wide v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->q:D

    iget-boolean v4, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t:Z

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/b/h;->a(IDZI)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/weather2/b/l;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/l;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r:I

    invoke-virtual {v0, v1}, Lcom/miui/weather2/b/l;->a(I)V

    :cond_1
    return-void
.end method

.method private t()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->u()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ao;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ao;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic t(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->v()V

    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic u(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->u()V

    return-void
.end method

.method private v()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setRotation(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    const v1, 0x7f020194

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x470ca000    # 36000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->s:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/b/h;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/weather2/b/h;-><init>(Landroid/content/res/Resources;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setDynamicBackgroundWeatherTypeAndIsNight(I)V

    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->f()Lcom/miui/weather2/tools/av;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/h;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/tools/av;->a(Lcom/miui/weather2/tools/av$a;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->y:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/weather2/b/l;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/weather2/b/l;-><init>(Landroid/content/res/Resources;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setDynamicBackgroundWeatherTypeAndIsNight(I)V

    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->f()Lcom/miui/weather2/tools/av;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/l;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/tools/av;->a(Lcom/miui/weather2/tools/av$a;)V

    :cond_1
    return-void
.end method

.method public a(IDI)V
    .locals 2

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r:I

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->q:D

    cmpl-double v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->r:I

    iput-wide p2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->q:D

    iput p4, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->s:I

    invoke-virtual {p0, p4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(I)V

    invoke-direct {p0, p4}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setDynamicBackgroundWeatherTypeAndIsNight(I)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-ge p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    aput-object v2, v0, v1

    new-instance v1, Lcom/miui/weather2/view/onOnePage/aa;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/aa;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b([Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->z:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->t:Z

    invoke-virtual {p0, p2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(I)V

    invoke-direct {p0, p2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setDynamicBackgroundWeatherTypeAndIsNight(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Lcom/miui/weather2/b/h;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/miui/weather2/b/h;

    invoke-virtual {v0}, Lcom/miui/weather2/b/h;->c()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Lcom/miui/weather2/b/l;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/miui/weather2/b/l;

    invoke-virtual {v0}, Lcom/miui/weather2/b/l;->a()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/weather2/b/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/weather2/b/h;

    invoke-virtual {v0}, Lcom/miui/weather2/b/h;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/weather2/b/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/weather2/b/h;

    invoke-virtual {v0}, Lcom/miui/weather2/b/h;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iput-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->x:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/weather2/view/onOnePage/ai;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/ai;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a([Landroid/view/View;Ljava/lang/Runnable;J)V

    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/weather2/view/onOnePage/aj;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/aj;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b([Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->A:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getCurrentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSkyBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->g()V

    return-void
.end method

.method public j()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/view/onOnePage/a;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->w:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->A:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/view/onOnePage/a;->onFinishInflate()V

    new-instance v0, Lcom/miui/weather2/view/onOnePage/y;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/y;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    const v0, 0x7f0f015f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->h:Landroid/widget/VideoView;

    const v0, 0x7f0f0161

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->j:Landroid/view/View;

    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k:Landroid/view/View;

    const v0, 0x7f0f0164

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->p:Landroid/view/View;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/al;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/al;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/as;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/as;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Landroid/view/View;)V

    return-void
.end method

.method public setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/miui/weather2/view/onOnePage/a;->setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3.6"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->l()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "3.7"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->m()V

    goto :goto_0

    :cond_1
    const-string v0, "3.8"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->n()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k()V

    goto :goto_0
.end method
