.class public Lcom/facebook/ads/internal/view/i;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/i/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/i$b;,
        Lcom/facebook/ads/internal/view/i$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final d:F

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/i/b/p;

.field private final c:Lcom/facebook/ads/internal/view/i/b/d;

.field private final k:Lcom/facebook/ads/internal/view/a$a;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/FrameLayout;

.field private final n:Landroid/widget/ImageView;

.field private final o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

.field private final p:Lcom/facebook/ads/internal/view/e/c;

.field private final q:Landroid/widget/RelativeLayout;

.field private final r:Landroid/widget/PopupMenu;

.field private s:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/facebook/ads/internal/view/i$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private u:Lcom/facebook/ads/internal/view/i/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Landroid/widget/PopupMenu$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/i;->a:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/internal/view/i;->d:F

    sget v0, Lcom/facebook/ads/internal/view/i;->d:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/i;->e:I

    sget v0, Lcom/facebook/ads/internal/view/i;->d:F

    const/high16 v1, 0x42300000    # 44.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/i;->f:I

    sget v0, Lcom/facebook/ads/internal/view/i;->d:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/i;->g:I

    sget v0, Lcom/facebook/ads/internal/view/i;->d:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/i;->h:I

    sget v0, Lcom/facebook/ads/internal/view/i;->h:I

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/ads/internal/view/i;->i:I

    sget v0, Lcom/facebook/ads/internal/view/i;->h:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/ads/internal/view/i;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/i$a;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/i$1;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/view/i/b/p;

    new-instance v0, Lcom/facebook/ads/internal/view/i$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/i$2;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/view/i/b/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/i;->v:I

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->w:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->x:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->k:Lcom/facebook/ads/internal/view/a$a;

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/i;->setGravity(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt p2, v1, :cond_0

    new-instance p2, Lcom/facebook/ads/internal/view/i$3;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/i$3;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->y:Landroid/widget/PopupMenu$OnDismissListener;

    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    sget v2, Lcom/facebook/ads/internal/view/i;->g:I

    sget v3, Lcom/facebook/ads/internal/view/i;->g:I

    sget v4, Lcom/facebook/ads/internal/view/i;->g:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/i$4;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/i$4;-><init>(Lcom/facebook/ads/internal/view/i;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p3}, Lcom/facebook/ads/internal/view/i;->setCloseButtonStyle(Lcom/facebook/ads/internal/view/i$a;)V

    new-instance p2, Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    sget p3, Lcom/facebook/ads/internal/view/i;->g:I

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    sget v2, Lcom/facebook/ads/internal/view/i;->g:I

    sget v3, Lcom/facebook/ads/internal/view/i;->g:I

    invoke-virtual {p2, p3, v1, v2, v3}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setProgress(F)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/internal/view/i;->i:I

    sget v2, Lcom/facebook/ads/internal/view/i;->i:I

    sget v3, Lcom/facebook/ads/internal/view/i;->j:I

    sget v4, Lcom/facebook/ads/internal/view/i;->i:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/facebook/ads/internal/view/i;->f:I

    sget v3, Lcom/facebook/ads/internal/view/i;->f:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/internal/view/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Lcom/facebook/ads/internal/view/e/c;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/e/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p3, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {p3, v1}, Lcom/facebook/ads/internal/view/e/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3, p2}, Lcom/facebook/ads/internal/view/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    sget p3, Lcom/facebook/ads/internal/view/i;->g:I

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    sget v2, Lcom/facebook/ads/internal/view/i;->g:I

    sget v3, Lcom/facebook/ads/internal/view/i;->g:I

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    sget-object p3, Lcom/facebook/ads/internal/w/c/b;->f:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {p3}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    new-instance p3, Lcom/facebook/ads/internal/view/i$5;

    invoke-direct {p3, p0}, Lcom/facebook/ads/internal/view/i$5;-><init>(Lcom/facebook/ads/internal/view/i;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/PopupMenu;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    invoke-direct {p2, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string p2, "Ad Choices"

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/facebook/ads/internal/view/i;->e:I

    sget p3, Lcom/facebook/ads/internal/view/i;->e:I

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget p2, Lcom/facebook/ads/internal/view/i;->h:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lcom/facebook/ads/internal/view/i;->h:I

    div-int/lit8 p3, p3, 0x2

    sget v1, Lcom/facebook/ads/internal/view/i;->h:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/internal/view/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->u:Lcom/facebook/ads/internal/view/i/a;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/i;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/i;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/i;->v:I

    return p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/component/CircularProgressView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/b/p;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/view/i/b/p;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/b/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/view/i/b/d;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/i;->x:Z

    return p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i$b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->t:Lcom/facebook/ads/internal/view/i$b;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/i;)Landroid/widget/PopupMenu;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i;->k:Lcom/facebook/ads/internal/view/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/b/h;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/b/h;->a(Z)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/b/h;->g(Z)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/internal/view/e/c;->a(II)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    const/16 v1, 0x4d

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->a(II)V

    if-eqz p2, :cond_1

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x6a000000
        0x0
    .end array-data
.end method

.method public a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    sget v2, Lcom/facebook/ads/internal/view/i;->g:I

    sget v3, Lcom/facebook/ads/internal/view/i;->g:I

    sget v4, Lcom/facebook/ads/internal/view/i;->g:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/w/c/b;->i:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/internal/view/i;->e:I

    sget v2, Lcom/facebook/ads/internal/view/i;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/internal/view/i;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/i$6;

    invoke-direct {v1, p0, p2}, Lcom/facebook/ads/internal/view/i$6;-><init>(Lcom/facebook/ads/internal/view/i;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/i$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/internal/view/i$7;-><init>(Lcom/facebook/ads/internal/view/i;Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;I)V
    .locals 2

    iput p3, p0, Lcom/facebook/ads/internal/view/i;->v:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/e/c;->setPageDetails(Lcom/facebook/ads/internal/adapters/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/facebook/ads/internal/view/i$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/internal/view/i$8;-><init>(Lcom/facebook/ads/internal/view/i;Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xe

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i;->y:Landroid/widget/PopupMenu$OnDismissListener;

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_0
    if-gtz p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i;->a(Z)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/a;)V
    .locals 3

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->u:Lcom/facebook/ads/internal/view/i/a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->u:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/o/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/view/i/b/p;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/view/i/b/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/o/e;->a([Lcom/facebook/ads/internal/o/f;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/i;->x:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->x:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->x:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/internal/view/i;->g:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/view/i/a;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->u:Lcom/facebook/ads/internal/view/i/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->u:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/o/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/view/i/b/p;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/view/i/b/d;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/o/e;->b([Lcom/facebook/ads/internal/o/f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->u:Lcom/facebook/ads/internal/view/i/a;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->y:Landroid/widget/PopupMenu$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->w:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method

.method public setCloseButtonStyle(Lcom/facebook/ads/internal/view/i$a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/view/i$9;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/facebook/ads/internal/w/c/b;->q:Lcom/facebook/ads/internal/w/c/b;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/facebook/ads/internal/w/c/b;->u:Lcom/facebook/ads/internal/w/c/b;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/facebook/ads/internal/w/c/b;->o:Lcom/facebook/ads/internal/w/c/b;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->n:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPageDetailsVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->o:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setProgressWithAnimation(F)V

    return-void
.end method

.method public setShowPageDetails(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->p:Lcom/facebook/ads/internal/view/e/c;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/internal/view/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->t:Lcom/facebook/ads/internal/view/i$b;

    return-void
.end method
