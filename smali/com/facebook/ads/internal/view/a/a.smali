.class public Lcom/facebook/ads/internal/view/a/a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/a/a$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I


# instance fields
.field private final k:Lcom/facebook/ads/internal/view/a/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final l:I

.field private final m:I

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x42300000    # 44.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->d:I

    sget v0, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v2, Lcom/facebook/ads/internal/view/a/a;->d:I

    sub-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/internal/view/a/a;->e:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x42960000    # 75.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->f:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->g:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->h:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->i:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/a/a;->j:I

    return-void
.end method

.method private constructor <init>(Lcom/facebook/ads/internal/view/a/a$a;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->a(Lcom/facebook/ads/internal/view/a/a$a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->b(Lcom/facebook/ads/internal/view/a/a$a;)Lcom/facebook/ads/internal/view/a/e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/internal/view/a/a;->k:Lcom/facebook/ads/internal/view/a/e;

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->c(Lcom/facebook/ads/internal/view/a/a$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/facebook/ads/internal/view/a/a;->f:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/facebook/ads/internal/view/a/a;->h:I

    :goto_0
    iput v1, v0, Lcom/facebook/ads/internal/view/a/a;->l:I

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->c(Lcom/facebook/ads/internal/view/a/a$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/facebook/ads/internal/view/a/a;->g:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/facebook/ads/internal/view/a/a;->i:I

    :goto_1
    iput v1, v0, Lcom/facebook/ads/internal/view/a/a;->m:I

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->d(Lcom/facebook/ads/internal/view/a/a$a;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/internal/view/a/a;->n:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/a;->setClickable(Z)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->f(Lcom/facebook/ads/internal/view/a/a$a;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/facebook/ads/internal/view/a/a;->d:I

    sget v6, Lcom/facebook/ads/internal/view/a/a;->d:I

    sget v7, Lcom/facebook/ads/internal/view/a/a;->d:I

    sget v8, Lcom/facebook/ads/internal/view/a/a;->d:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v5, Lcom/facebook/ads/internal/w/c/b;->q:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v5}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Lcom/facebook/ads/internal/view/a/a$1;

    invoke-direct {v5, v0}, Lcom/facebook/ads/internal/view/a/a$1;-><init>(Lcom/facebook/ads/internal/view/a/a;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/facebook/ads/internal/view/a/a;->c:I

    sget v7, Lcom/facebook/ads/internal/view/a/a;->c:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v6, Lcom/facebook/ads/internal/view/a/a;->e:I

    sget v7, Lcom/facebook/ads/internal/view/a/a;->e:I

    sget v8, Lcom/facebook/ads/internal/view/a/a;->e:I

    sget v9, Lcom/facebook/ads/internal/view/a/a;->e:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v5, v0, Lcom/facebook/ads/internal/view/a/a;->m:I

    iget v6, v0, Lcom/facebook/ads/internal/view/a/a;->m:I

    iget v7, v0, Lcom/facebook/ads/internal/view/a/a;->m:I

    iget v8, v0, Lcom/facebook/ads/internal/view/a/a;->m:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->g(Lcom/facebook/ads/internal/view/a/a$a;)Lcom/facebook/ads/internal/w/c/b;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v0, Lcom/facebook/ads/internal/view/a/a;->l:I

    iget v8, v0, Lcom/facebook/ads/internal/view/a/a;->l:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->h(Lcom/facebook/ads/internal/view/a/a$a;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {v4, v7}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x11

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v8, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v9, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v10, Lcom/facebook/ads/internal/view/a/a;->a:I

    invoke-virtual {v6, v8, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x14

    invoke-static {v8, v1, v9}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/widget/TextView;ZI)V

    const v9, -0xe3e1df

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->i(Lcom/facebook/ads/internal/view/a/a$a;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v11, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v12, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v13, Lcom/facebook/ads/internal/view/a/a;->a:I

    invoke-virtual {v9, v11, v3, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x10

    invoke-static {v11, v3, v12}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/widget/TextView;ZI)V

    const v12, -0x9f9890

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->j(Lcom/facebook/ads/internal/view/a/a$a;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v13, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v14, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v15, Lcom/facebook/ads/internal/view/a/a;->a:I

    invoke-virtual {v12, v13, v3, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v13, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->k(Lcom/facebook/ads/internal/view/a/a$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/facebook/ads/internal/view/a/f;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/ads/internal/view/a/f;-><init>(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->l(Lcom/facebook/ads/internal/view/a/a$a;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/facebook/ads/internal/w/c/b;->p:Lcom/facebook/ads/internal/w/c/b;

    invoke-virtual {v4, v6, v7}, Lcom/facebook/ads/internal/view/a/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/w/c/b;)V

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/view/a/f;->setSelected(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/internal/view/a/a;->getFooterView()Landroid/view/View;

    move-result-object v1

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    invoke-static {v13}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v8, Lcom/facebook/ads/internal/view/a/a;->a:I

    sget v9, Lcom/facebook/ads/internal/view/a/a;->a:I

    invoke-virtual {v7, v5, v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2, v4}, Lcom/facebook/ads/internal/view/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v13, v6}, Lcom/facebook/ads/internal/view/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v7}, Lcom/facebook/ads/internal/view/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/view/a/a$a;->e(Lcom/facebook/ads/internal/view/a/a$a;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/a/a$a;Lcom/facebook/ads/internal/view/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/a/a;-><init>(Lcom/facebook/ads/internal/view/a/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/a/a;)Lcom/facebook/ads/internal/view/a/e;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/a/a;->k:Lcom/facebook/ads/internal/view/a/e;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/a/a;->n:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 9

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/facebook/ads/internal/w/c/b;->n:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, -0xca871b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/facebook/ads/internal/view/a/a;->j:I

    sget v4, Lcom/facebook/ads/internal/view/a/a;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/widget/TextView;ZI)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lcom/facebook/ads/internal/view/a/a;->b:I

    sget v6, Lcom/facebook/ads/internal/view/a/a;->b:I

    sget v7, Lcom/facebook/ads/internal/view/a/a;->b:I

    sget v8, Lcom/facebook/ads/internal/view/a/a;->b:I

    invoke-virtual {v4, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/f/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Lcom/facebook/ads/internal/view/a/a$2;

    invoke-direct {v3, p0}, Lcom/facebook/ads/internal/view/a/a$2;-><init>(Lcom/facebook/ads/internal/view/a/a;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v6
.end method
