.class public Lcom/facebook/ads/internal/view/f;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/f$c;,
        Lcom/facebook/ads/internal/view/f$b;,
        Lcom/facebook/ads/internal/view/f$d;,
        Lcom/facebook/ads/internal/view/f$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/widget/RelativeLayout$LayoutParams;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Lcom/facebook/ads/internal/adapters/b/f;

.field private final f:Lcom/facebook/ads/internal/view/a$a;

.field private final g:Lcom/facebook/ads/internal/s/c;

.field private final h:Lcom/facebook/ads/internal/w/b/w;

.field private final i:Lcom/facebook/ads/internal/x/a;

.field private final j:Lcom/facebook/ads/internal/x/a$a;

.field private final k:Lcom/facebook/ads/internal/w/b/e;

.field private final l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/AudienceNetworkActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/facebook/ads/internal/view/component/i;

.field private final q:Landroid/widget/TextView;

.field private final r:Landroid/widget/LinearLayout;

.field private final s:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/internal/view/f;->a:Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/f;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/f;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x43660000    # 230.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/f;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/f;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/w/b/w;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/b/w;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    new-instance v0, Lcom/facebook/ads/internal/view/f$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/f$1;-><init>(Lcom/facebook/ads/internal/view/f;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->s:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/s/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/f;->i()Lcom/facebook/ads/internal/adapters/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/c;->a()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/facebook/ads/internal/view/f;->l:I

    iput-object p4, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    new-instance p2, Lcom/facebook/ads/internal/view/f$2;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/f$2;-><init>(Lcom/facebook/ads/internal/view/f;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f;->j:Lcom/facebook/ads/internal/x/a$a;

    new-instance p2, Lcom/facebook/ads/internal/x/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->j:Lcom/facebook/ads/internal/x/a$a;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4, p3}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/x/a$a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    const/16 p3, 0xfa

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/x/a;->a(I)V

    new-instance p2, Lcom/facebook/ads/internal/view/component/i;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/component/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x0

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    invoke-virtual {p3, p2}, Lcom/facebook/ads/internal/view/component/i;->setProgress(I)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p3, p2, v0, v1}, Lcom/facebook/ads/internal/view/component/i;->a(ZII)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/f;->e()Lcom/facebook/ads/internal/adapters/b/g;

    move-result-object v0

    iget v1, p0, Lcom/facebook/ads/internal/view/f;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/internal/view/component/i;->setText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    invoke-static {p3, p2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/internal/view/f;->c:I

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    invoke-virtual {p0, v0, p3}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/f;->e()Lcom/facebook/ads/internal/adapters/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    const/16 v0, 0x20

    invoke-static {p3, p4, v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/widget/TextView;ZI)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/f;->h()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    sget p4, Lcom/facebook/ads/internal/view/f;->d:I

    goto :goto_1

    :cond_1
    const/4 p4, -0x1

    :goto_1
    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget p4, Lcom/facebook/ads/internal/view/f;->b:I

    sget v0, Lcom/facebook/ads/internal/view/f;->b:I

    sget v2, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p3, p4, p2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/view/component/i;->getId()I

    move-result p2

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    sget p3, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/lit8 p3, p3, 0x2

    sget v0, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/f;->a(ZLjava/util/List;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/f;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    new-instance p1, Lcom/facebook/ads/internal/w/b/e;

    iget p2, p0, Lcom/facebook/ads/internal/view/f;->l:I

    new-instance p3, Lcom/facebook/ads/internal/view/f$d;

    iget-object p4, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    iget v0, p0, Lcom/facebook/ads/internal/view/f;->l:I

    invoke-direct {p3, p0, p4, v0}, Lcom/facebook/ads/internal/view/f$d;-><init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/adapters/b/f;I)V

    invoke-direct {p1, p2, p3}, Lcom/facebook/ads/internal/w/b/e;-><init>(ILcom/facebook/ads/internal/w/b/e$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/adapters/b/q;)V
    .locals 5

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/f;->m:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/f;->m:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/e;->b()Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/facebook/ads/internal/view/f$3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/f$3;-><init>(Lcom/facebook/ads/internal/view/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/s/h;

    invoke-direct {v0}, Lcom/facebook/ads/internal/s/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/g/b;->getAdDataBundle()Lcom/facebook/ads/internal/adapters/b/q;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/s/h;->c(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/g/b;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->l:I

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/w/b/e;->e()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/s/h;->d(I)V

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->l:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/s/h;->e(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/s/h;->a(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/e;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/s/h;->a(Z)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/f;->i()Lcom/facebook/ads/internal/adapters/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/c;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/s/h;->b(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v3, "touch"

    iget-object v4, p0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ad_selection"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/s/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_cyoa"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/s/c;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->p(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/f;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/b/q;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/b/q;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->c(Landroid/view/View;)V

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->k:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/f$a;

    invoke-direct {v2, p1}, Lcom/facebook/ads/internal/view/f$a;-><init>(Lcom/facebook/ads/internal/adapters/b/q;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/o/d;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->o:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object p0, p0, Lcom/facebook/ads/internal/view/f;->s:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p1, p0}, Lcom/facebook/ads/AudienceNetworkActivity;->removeBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(ZLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/adapters/b/q;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    if-nez p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/facebook/ads/internal/adapters/b/q;

    new-instance v8, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v12, v0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/s/c;

    iget-object v13, v0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    iget-object v14, v0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    iget-object v9, v0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    move-object v15, v9

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/facebook/ads/internal/view/g/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/q;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;Lcom/facebook/ads/internal/view/a$a;)V

    invoke-virtual {v8, v5}, Lcom/facebook/ads/internal/view/g/b;->setShouldPlayButtonOnTop(Z)V

    iget-object v9, v0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v9}, Lcom/facebook/ads/internal/adapters/b/f;->i()Lcom/facebook/ads/internal/adapters/b/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/internal/adapters/b/c;->d()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/facebook/ads/internal/view/g/b;->a(Z)V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/facebook/ads/internal/view/g/b;->setCornerRadius(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    if-eqz p1, :cond_2

    const/4 v11, -0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-eqz p1, :cond_3

    const/4 v10, 0x0

    :cond_3
    invoke-direct {v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v10, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/2addr v10, v4

    sget v11, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/2addr v11, v4

    sget v12, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/2addr v12, v4

    sget v13, Lcom/facebook/ads/internal/view/f;->b:I

    div-int/2addr v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v10, Lcom/facebook/ads/internal/view/f$b;

    invoke-direct {v10, v0, v8}, Lcom/facebook/ads/internal/view/f$b;-><init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/view/g/b;)V

    invoke-virtual {v8, v10}, Lcom/facebook/ads/internal/view/g/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v8, v10}, Lcom/facebook/ads/internal/view/g/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/facebook/ads/internal/view/f$c;

    invoke-direct {v10, v0, v8}, Lcom/facebook/ads/internal/view/f$c;-><init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/internal/view/g/b;)V

    invoke-virtual {v8, v10}, Lcom/facebook/ads/internal/view/g/b;->setAdReportingFlowListener(Lcom/facebook/ads/internal/view/a/b;)V

    if-eqz v1, :cond_5

    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    iget-object v11, v0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v11}, Lcom/facebook/ads/internal/adapters/b/f;->i()Lcom/facebook/ads/internal/adapters/b/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/ads/internal/adapters/b/c;->c()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/facebook/ads/internal/view/g/b;->a(ZI)V

    :cond_5
    iget-object v10, v0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/f;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/f;->m:Z

    return p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/w/b/e;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/component/i;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/f;->p:Lcom/facebook/ads/internal/view/component/i;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/g/b;->a()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/g/b;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->c:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/facebook/ads/internal/view/f;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {p1, p0}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->s:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p3, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/w/b/e;->b()Z

    return-void
.end method

.method public a_(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/w/b/e;->b()Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/f;->m:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/facebook/ads/internal/view/f;->n:Z

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/w/b/e;->a()Z

    :cond_1
    return-void
.end method

.method c(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/g/b;->b()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/g/b;->c()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final getTouchDataRecorder()Lcom/facebook/ads/internal/w/b/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->q:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    sget v3, Lcom/facebook/ads/internal/view/f;->d:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/internal/view/g/b;->b(Z)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/g/b;->setShouldPlayButtonOnTop(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->k:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/e;->b()Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->i:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_cyoa"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->g:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/facebook/ads/internal/s/c;->d(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return v0
.end method

.method setIsAdReportingLayoutVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/f;->n:Z

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    return-void
.end method
