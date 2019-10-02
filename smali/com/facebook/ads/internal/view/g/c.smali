.class public Lcom/facebook/ads/internal/view/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/g/c$b;,
        Lcom/facebook/ads/internal/view/g/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private e:Lcom/facebook/ads/internal/view/component/a;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/facebook/ads/internal/s/c;

.field private final h:Lcom/facebook/ads/internal/adapters/b/q;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/facebook/ads/internal/adapters/b/h;

.field private final k:Lcom/facebook/ads/internal/x/a;

.field private final l:Lcom/facebook/ads/internal/w/b/w;

.field private m:Ljava/util/concurrent/Executor;

.field private n:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/ads/internal/view/c/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/facebook/ads/internal/view/c/a$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g/c;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42900000    # 72.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g/c;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g/c;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/adapters/b/q;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/internal/w/b/p;->a:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->m:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/g/c;->g:Lcom/facebook/ads/internal/s/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/g/c;->n:Lcom/facebook/ads/internal/view/a$a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->k()Lcom/facebook/ads/internal/adapters/b/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/j;->b()[B

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/o/c;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g/c;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->i()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g/c;->j:Lcom/facebook/ads/internal/adapters/b/h;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/g/c;->k:Lcom/facebook/ads/internal/x/a;

    iput-object p6, p0, Lcom/facebook/ads/internal/view/g/c;->l:Lcom/facebook/ads/internal/w/b/w;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/g/c;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->n:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/g/c;->n:Lcom/facebook/ads/internal/view/a$a;

    sget-object v0, Lcom/facebook/ads/internal/view/i/b/aa;->c:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/g/c;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/g/c;->n:Lcom/facebook/ads/internal/view/a$a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/g/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/g/c;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/g/c;->g:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/g/c;)Lcom/facebook/ads/internal/adapters/b/q;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/g/c;)Lcom/facebook/ads/internal/view/c/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/g/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()Lcom/facebook/ads/internal/view/component/a;
    .locals 11

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->e:Lcom/facebook/ads/internal/view/component/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->e:Lcom/facebook/ads/internal/view/component/a;

    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/view/component/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->e:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/g/c;->j:Lcom/facebook/ads/internal/adapters/b/h;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/g/c;->g:Lcom/facebook/ads/internal/s/c;

    iget-object v8, p0, Lcom/facebook/ads/internal/view/g/c;->n:Lcom/facebook/ads/internal/view/a$a;

    iget-object v9, p0, Lcom/facebook/ads/internal/view/g/c;->k:Lcom/facebook/ads/internal/x/a;

    iget-object v10, p0, Lcom/facebook/ads/internal/view/g/c;->l:Lcom/facebook/ads/internal/w/b/w;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->e:Lcom/facebook/ads/internal/view/component/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->e:Lcom/facebook/ads/internal/view/component/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->h()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/component/a;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->e:Lcom/facebook/ads/internal/view/component/a;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/g/c;)Lcom/facebook/ads/internal/view/component/a;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/g/c;->g()Lcom/facebook/ads/internal/view/component/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/g/c;->b()Lcom/facebook/ads/internal/view/g/c$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/g/c$a;->b:Lcom/facebook/ads/internal/view/g/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/facebook/ads/internal/view/g/c$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->j()Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/n;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/view/g/c$a;->c:Lcom/facebook/ads/internal/view/g/c$a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->k()Lcom/facebook/ads/internal/adapters/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/view/g/c$a;->a:Lcom/facebook/ads/internal/view/g/c$a;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/view/g/c$a;->b:Lcom/facebook/ads/internal/view/g/c$a;

    return-object v0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/view/g/c$a;->d:Lcom/facebook/ads/internal/view/g/c$a;

    return-object v0
.end method

.method public c()Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/internal/view/g/c$a;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/g/c;->b()Lcom/facebook/ads/internal/view/g/c$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/g/c$3;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/g/c$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Landroid/util/Pair;

    new-instance v10, Lcom/facebook/ads/internal/view/component/j;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/g/c;->j:Lcom/facebook/ads/internal/adapters/b/h;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/component/j;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/h;ZZZ)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/q;->g()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/e;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/q;->g()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/e;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/internal/view/component/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/16 v4, 0x11

    invoke-virtual {v10, v4}, Lcom/facebook/ads/internal/view/component/j;->setAlignment(I)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/g/c;->g()Lcom/facebook/ads/internal/view/component/a;

    move-result-object v5

    new-instance v6, Lcom/facebook/ads/internal/view/component/f;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/facebook/ads/internal/view/component/f;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v3}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Lcom/facebook/ads/internal/view/component/f;->setRadius(I)V

    new-instance v7, Lcom/facebook/ads/internal/view/c/d;

    invoke-direct {v7, v6}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v7}, Lcom/facebook/ads/internal/view/c/d;->a()Lcom/facebook/ads/internal/view/c/d;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v8}, Lcom/facebook/ads/internal/adapters/b/q;->f()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/facebook/ads/internal/view/g/c;->c:I

    sget v8, Lcom/facebook/ads/internal/view/g/c;->c:I

    invoke-direct {v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/facebook/ads/internal/view/g/c;->d:I

    sget v6, Lcom/facebook/ads/internal/view/g/c;->d:I

    invoke-virtual {v2, v3, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v1, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    new-instance v1, Landroid/util/Pair;

    new-instance v10, Lcom/facebook/ads/internal/view/f/b;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/b/o;->a(Lcom/facebook/ads/internal/adapters/b/q;)Lcom/facebook/ads/internal/adapters/b/o;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/internal/view/g/c;->g:Lcom/facebook/ads/internal/s/c;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/g/c;->n:Lcom/facebook/ads/internal/view/a$a;

    new-instance v7, Lcom/facebook/ads/internal/view/g/c$b;

    const/4 v2, 0x0

    invoke-direct {v7, p0, v2}, Lcom/facebook/ads/internal/view/g/c$b;-><init>(Lcom/facebook/ads/internal/view/g/c;Lcom/facebook/ads/internal/view/g/c$1;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/internal/view/f/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/o;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/f/b$c;ZZ)V

    invoke-direct {v1, v0, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Lcom/facebook/ads/internal/view/g/d;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/q;->k()Lcom/facebook/ads/internal/adapters/b/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/j;->d()Ljava/util/List;

    move-result-object v4

    sget v5, Lcom/facebook/ads/internal/view/g/c;->b:I

    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/internal/view/g/d;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_2
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Lcom/facebook/ads/internal/view/g/c$1;

    invoke-direct {v3, p0}, Lcom/facebook/ads/internal/view/g/c$1;-><init>(Lcom/facebook/ads/internal/view/g/c;)V

    iput-object v3, p0, Lcom/facebook/ads/internal/view/g/c;->p:Lcom/facebook/ads/internal/view/c/a$b;

    new-instance v3, Lcom/facebook/ads/internal/view/c/a;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/g/c;->p:Lcom/facebook/ads/internal/view/c/a$b;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v2}, Lcom/facebook/ads/internal/view/c/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object v3, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {}, Lcom/facebook/ads/internal/w/e/b;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/internal/view/g/c;->i:Ljava/lang/String;

    const-string v10, "text/html"

    const-string v11, "utf-8"

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/internal/view/c/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->h:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->k()Lcom/facebook/ads/internal/adapters/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/w/e/e;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g/c;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/facebook/ads/internal/w/e/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v1, Lcom/facebook/ads/internal/view/g/c$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/g/c$2;-><init>(Lcom/facebook/ads/internal/view/g/c;)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/w/e/e;->a(Lcom/facebook/ads/internal/w/e/e$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g/c;->m:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/facebook/ads/internal/w/e/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->o:Lcom/facebook/ads/internal/view/c/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g/c;->p:Lcom/facebook/ads/internal/view/c/a$b;

    :cond_0
    return-void
.end method
