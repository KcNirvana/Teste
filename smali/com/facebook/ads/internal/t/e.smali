.class public Lcom/facebook/ads/internal/t/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/t/e$a;,
        Lcom/facebook/ads/internal/t/e$b;,
        Lcom/facebook/ads/internal/t/e$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "e"

.field private static c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private static h:Lcom/facebook/ads/internal/h/b;


# instance fields
.field private A:Lcom/facebook/ads/internal/t/k;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Lcom/facebook/ads/internal/view/c/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private G:Lcom/facebook/ads/internal/t/d;

.field private H:Lcom/facebook/ads/internal/adapters/p$a;

.field private I:Ljava/lang/String;

.field private J:Landroid/view/View;

.field protected a:Lcom/facebook/ads/internal/adapters/i;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/facebook/ads/internal/h/b;

.field private i:Lcom/facebook/ads/internal/t/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final j:Lcom/facebook/ads/internal/t/e$c;

.field private k:Lcom/facebook/ads/internal/b/g;

.field private volatile l:Z

.field private m:Lcom/facebook/ads/internal/m/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/facebook/ads/internal/protocol/e;

.field private o:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/facebook/ads/NativeAdLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/ads/internal/t/f;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/View$OnTouchListener;

.field private t:Lcom/facebook/ads/internal/x/a;

.field private u:Lcom/facebook/ads/internal/x/a$a;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/x/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/facebook/ads/internal/w/b/w;

.field private x:Lcom/facebook/ads/internal/adapters/p;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private y:Lcom/facebook/ads/internal/t/e$a;

.field private z:Lcom/facebook/ads/internal/view/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/m/d;Lcom/facebook/ads/internal/t/e$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/facebook/ads/internal/t/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/t/e$c;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    iput-object p3, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/facebook/ads/internal/t/e;->l:Z

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->J:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/t/e$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->f:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->n:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->r:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/internal/w/b/w;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/b/w;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->w:Lcom/facebook/ads/internal/w/b/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/e;->C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/e;->D:Z

    sget-object v0, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    sget-object v0, Lcom/facebook/ads/internal/adapters/p$a;->a:Lcom/facebook/ads/internal/adapters/p$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->H:Lcom/facebook/ads/internal/adapters/p$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/t/e;->j:Lcom/facebook/ads/internal/t/e$c;

    sget-object p2, Lcom/facebook/ads/internal/t/e;->h:Lcom/facebook/ads/internal/h/b;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/facebook/ads/internal/t/e;->h:Lcom/facebook/ads/internal/h/b;

    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/facebook/ads/internal/h/b;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->J:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/t/e;)V
    .locals 3

    iget-object v0, p1, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/facebook/ads/internal/t/e;->j:Lcom/facebook/ads/internal/t/e$c;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/ads/internal/t/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/t/e$c;)V

    iget-object v0, p1, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/e;->l:Z

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->J:Landroid/view/View;

    return-void
.end method

.method private A()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private B()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/w/e/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/e/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/e/g;->a(Lcom/facebook/ads/internal/w/e/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    return-object p0
.end method

.method private a(Lcom/facebook/ads/internal/adapters/i;Z)V
    .locals 5
    .param p1    # Lcom/facebook/ads/internal/adapters/i;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    sget-object v1, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->l()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->l()Lcom/facebook/ads/internal/t/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->l()Lcom/facebook/ads/internal/t/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/t/g;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->l()Lcom/facebook/ads/internal/t/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/t/g;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->n:Lcom/facebook/ads/internal/protocol/e;

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->k:Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/protocol/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->m()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->m()Lcom/facebook/ads/internal/t/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->m()Lcom/facebook/ads/internal/t/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/t/g;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->m()Lcom/facebook/ads/internal/t/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/t/g;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/t/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/t/g;->c()I

    move-result v4

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/g;->b()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    new-instance v1, Lcom/facebook/ads/internal/t/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/internal/t/e$2;-><init>(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/adapters/i;Z)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/b;->a(Lcom/facebook/ads/internal/h/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/adapters/i;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/adapters/i;Z)V

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/t/g;Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/c/d;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/g;->c()I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/g;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/internal/view/c/d;->a(II)Lcom/facebook/ads/internal/view/c/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->j:Lcom/facebook/ads/internal/t/e$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->j:Lcom/facebook/ads/internal/t/e$c;

    invoke-interface {v0, p2}, Lcom/facebook/ads/internal/t/e$c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/internal/t/e;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/b/g;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    return-object p0
.end method

.method private b(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/internal/t/f;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1f

    if-eqz p3, :cond_1e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/facebook/ads/internal/t/e;->b:Ljava/lang/String;

    const-string p2, "Ad not loaded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->p:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->p:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->clearAdReportingLayout()V

    :cond_1
    if-nez p2, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->n:Lcom/facebook/ads/internal/protocol/e;

    sget-object p2, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    new-instance p2, Lcom/facebook/ads/internal/protocol/a;

    sget-object p3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_MEDIAVIEW_IN_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v0, "MediaView is missing."

    invoke-direct {p2, p3, v0}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/t/h;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_2
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/facebook/ads/internal/t/e;->b:Ljava/lang/String;

    const-string p2, "MediaView is missing."

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    new-instance p2, Lcom/facebook/ads/internal/protocol/a;

    sget-object p3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ICONVIEW_IN_NATIVEBANNERAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v0, "AdIconView is missing."

    invoke-direct {p2, p3, v0}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/t/h;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_4
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/facebook/ads/internal/t/e;->b:Ljava/lang/String;

    const-string p2, "AdIconView is missing."

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/f;->getAdContentsView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    new-instance p2, Lcom/facebook/ads/internal/protocol/a;

    sget-object p3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNSUPPORTED_AD_ASSET_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v0, "ad media type is not supported."

    invoke-direct {p2, p3, v0}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/t/h;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/facebook/ads/internal/t/e;->b:Ljava/lang/String;

    const-string v1, "Native Ad was already registered with a View. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->z()V

    :cond_9
    sget-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/facebook/ads/internal/t/e;->b:Ljava/lang/String;

    const-string v1, "View already registered with a NativeAd. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/t/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->z()V

    :cond_a
    new-instance v0, Lcom/facebook/ads/internal/t/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/t/e$a;-><init>(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/e$1;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->y:Lcom/facebook/ads/internal/t/e$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->q:Lcom/facebook/ads/internal/t/f;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/facebook/ads/internal/view/ab;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/facebook/ads/internal/t/e$3;

    invoke-direct {v3, p0}, Lcom/facebook/ads/internal/t/e$3;-><init>(Lcom/facebook/ads/internal/t/e;)V

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/view/ab;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/aa;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->z:Lcom/facebook/ads/internal/view/ab;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->z:Lcom/facebook/ads/internal/view/ab;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->J:Landroid/view/View;

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->J:Landroid/view/View;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_d
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->y:Lcom/facebook/ads/internal/t/e$a;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->y:Lcom/facebook/ads/internal/t/e$a;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/r/a;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->y:Lcom/facebook/ads/internal/t/e$a;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_e
    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {p3, p1, v0}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/view/View;Ljava/util/List;)V

    const/4 p3, 0x1

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    if-eqz v2, :cond_f

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    :goto_3
    invoke-virtual {p3}, Lcom/facebook/ads/internal/m/d;->f()I

    move-result p3

    move v4, p3

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p3

    goto :goto_3

    :cond_10
    const/4 v4, 0x1

    :goto_4
    new-instance p3, Lcom/facebook/ads/internal/t/e$4;

    invoke-direct {p3, p0}, Lcom/facebook/ads/internal/t/e$4;-><init>(Lcom/facebook/ads/internal/t/e;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/t/e;->u:Lcom/facebook/ads/internal/x/a$a;

    new-instance p3, Lcom/facebook/ads/internal/x/a;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/f;->getAdContentsView()Landroid/view/View;

    move-result-object p2

    :goto_5
    move-object v3, p2

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    goto :goto_5

    :goto_6
    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    const/4 v8, 0x0

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    :goto_7
    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/d;->g()I

    move-result p2

    move v5, p2

    goto :goto_8

    :cond_12
    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p2

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/facebook/ads/internal/t/e;->u:Lcom/facebook/ads/internal/x/a$a;

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/x/a$a;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    :goto_9
    invoke-virtual {p3}, Lcom/facebook/ads/internal/m/d;->h()I

    move-result v8

    goto :goto_a

    :cond_14
    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz p3, :cond_15

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/i;->j()I

    move-result v8

    goto :goto_a

    :cond_15
    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p3

    goto :goto_9

    :cond_16
    :goto_a
    invoke-virtual {p2, v8}, Lcom/facebook/ads/internal/x/a;->a(I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    if-eqz p3, :cond_17

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    :goto_b
    invoke-virtual {p3}, Lcom/facebook/ads/internal/m/d;->i()I

    move-result p3

    goto :goto_c

    :cond_17
    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz p3, :cond_18

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/i;->k()I

    move-result p3

    goto :goto_c

    :cond_18
    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz p3, :cond_19

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p3

    if-eqz p3, :cond_19

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p3

    goto :goto_b

    :cond_19
    const/16 p3, 0x3e8

    :goto_c
    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/x/a;->b(I)V

    new-instance p2, Lcom/facebook/ads/internal/adapters/p;

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/t/e$b;

    invoke-direct {v2, p0, v1}, Lcom/facebook/ads/internal/t/e$b;-><init>(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/e$1;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-direct {p2, p3, v2, v1, v3}, Lcom/facebook/ads/internal/adapters/p;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/adapters/i;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/t/e;->x:Lcom/facebook/ads/internal/adapters/p;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->x:Lcom/facebook/ads/internal/adapters/p;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/adapters/p;->a(Ljava/util/List;)V

    sget-object p2, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    new-instance p1, Lcom/facebook/ads/internal/view/c/c;

    invoke-direct {p1}, Lcom/facebook/ads/internal/view/c/c;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/c;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/c;->a(Lcom/facebook/ads/internal/x/a;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->z()I

    move-result p1

    if-lez p1, :cond_1a

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/i;->z()I

    move-result p2

    iget-object p3, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/i;->y()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/view/c/c;->a(II)V

    :cond_1a
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->m:Lcom/facebook/ads/internal/m/d;

    :goto_d
    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/d;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/view/c/c;->a(J)V

    goto :goto_e

    :cond_1b
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/b/g;->b()Lcom/facebook/ads/internal/m/d;

    move-result-object p2

    goto :goto_d

    :cond_1c
    :goto_e
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {p1, p2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid set of clickable views"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide a View"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/t/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e;->A()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->w:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/t/e;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->v:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->x:Lcom/facebook/ads/internal/adapters/p;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->q:Lcom/facebook/ads/internal/t/f;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/k;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->A:Lcom/facebook/ads/internal/t/k;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/t/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/t/e;->B:Z

    return p0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/t/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/t/e;->C:Z

    return p0
.end method

.method static synthetic n(Lcom/facebook/ads/internal/t/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/t/e;->D:Z

    return p0
.end method

.method static synthetic o(Lcom/facebook/ads/internal/t/e;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->t()Lcom/facebook/ads/internal/t/l;

    move-result-object p0

    sget-object v0, Lcom/facebook/ads/internal/t/l;->b:Lcom/facebook/ads/internal/t/l;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic p(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->H:Lcom/facebook/ads/internal/adapters/p$a;

    return-object p0
.end method

.method static synthetic q(Lcom/facebook/ads/internal/t/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/t/e;->E:Z

    return p0
.end method

.method static synthetic r(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/NativeAdLayout;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->p:Lcom/facebook/ads/NativeAdLayout;

    return-object p0
.end method

.method static synthetic s(Lcom/facebook/ads/internal/t/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcom/facebook/ads/internal/t/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic u(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/view/c/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    return-object p0
.end method

.method static synthetic v(Lcom/facebook/ads/internal/t/e;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/t/e;->s:Landroid/view/View$OnTouchListener;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/adapters/i;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->s:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public a(Landroid/view/View;Lcom/facebook/ads/internal/t/f;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/internal/t/e;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/t/e;->b(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/internal/t/f;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/t/e;->b(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/NativeAdLayout;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->p:Lcom/facebook/ads/NativeAdLayout;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/q;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/q;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->n:Lcom/facebook/ads/internal/protocol/e;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/d;Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/facebook/ads/internal/t/e;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/e;->l:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    sget-object v0, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/t/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/adapters/p$a;->b:Lcom/facebook/ads/internal/adapters/p$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->H:Lcom/facebook/ads/internal/adapters/p$a;

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/b/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->n:Lcom/facebook/ads/internal/protocol/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->n:Lcom/facebook/ads/internal/protocol/e;

    sget-object v4, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    if-ne v1, v4, :cond_1

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/b/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;I)V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/a;->a(Lcom/facebook/ads/internal/t/d;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->I:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/a;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/ads/internal/b/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/facebook/ads/internal/b/g;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    new-instance v0, Lcom/facebook/ads/internal/t/e$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/t/e$1;-><init>(Lcom/facebook/ads/internal/t/e;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/b/g;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "loadAd cannot be called more than once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/facebook/ads/internal/t/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->A:Lcom/facebook/ads/internal/t/k;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/x/a$a;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/e;->B:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    sget-object p2, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/t/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e;->A()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    invoke-interface {p1}, Lcom/facebook/ads/internal/t/h;->a()V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->c()V

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e;->i:Lcom/facebook/ads/internal/t/h;

    sget-object p2, Lcom/facebook/ads/internal/protocol/AdErrorType;->BROKEN_MEDIA_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v0, "Failed to load Media."

    invoke-static {p2, v0}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/t/h;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e;->I:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/e;->E:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    sget-object v1, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/adapters/p$a;->c:Lcom/facebook/ads/internal/adapters/p$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->H:Lcom/facebook/ads/internal/adapters/p$a;

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->G:Lcom/facebook/ads/internal/t/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/adapters/i;Z)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/e;->C:Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/g;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/t/e;->k:Lcom/facebook/ads/internal/b/g;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/e;->D:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Lcom/facebook/ads/internal/t/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->l()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/facebook/ads/internal/t/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->m()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/facebook/ads/internal/t/j;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->n()Lcom/facebook/ads/internal/t/j;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/facebook/ads/internal/t/i;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->p()Lcom/facebook/ads/internal/t/i;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/facebook/ads/internal/t/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->q()Lcom/facebook/ads/internal/t/g;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->g:Lcom/facebook/ads/internal/h/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/i;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/facebook/ads/internal/t/l;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/t/l;->a:Lcom/facebook/ads/internal/t/l;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->v()Lcom/facebook/ads/internal/t/l;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->getClientToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public x()Lcom/facebook/ads/internal/t/k;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->A:Lcom/facebook/ads/internal/t/k;

    return-object v0
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/f/a;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e;->B()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/s/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/s/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/t/e;->v()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/t/e;->p:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/a/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/internal/view/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e;->B()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->p:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->setAdReportingLayout(Lcom/facebook/ads/internal/view/a/c;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/c;->a()V

    return-void
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->q:Lcom/facebook/ads/internal/t/f;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->z:Lcom/facebook/ads/internal/view/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->z:Lcom/facebook/ads/internal/view/ab;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/t/e;->z:Lcom/facebook/ads/internal/view/ab;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->c()V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/c;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->F:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/t/e;->c:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/facebook/ads/internal/t/e;->C()V

    iput-object v1, p0, Lcom/facebook/ads/internal/t/e;->o:Landroid/view/View;

    iput-object v1, p0, Lcom/facebook/ads/internal/t/e;->q:Lcom/facebook/ads/internal/t/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    iput-object v1, p0, Lcom/facebook/ads/internal/t/e;->t:Lcom/facebook/ads/internal/x/a;

    :cond_4
    iput-object v1, p0, Lcom/facebook/ads/internal/t/e;->x:Lcom/facebook/ads/internal/adapters/p;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View not registered with this NativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-void
.end method
