.class public Lcom/alipay/android/app/birdnest/gifimage/b;
.super Lcom/alipay/android/app/template/AbsFBPlugin;
.source "GifImagePlugin.java"

# interfaces
.implements Lcom/alipay/android/app/template/FBFocusable;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Lcom/alipay/android/app/template/FBPluginCtx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/template/AbsFBPlugin;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->h:I

    iput-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->i:Z

    iput-object v2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->j:Landroid/content/Context;

    iput-object v2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->k:Lcom/alipay/android/app/template/FBPluginCtx;

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->k:Lcom/alipay/android/app/template/FBPluginCtx;

    return-void
.end method

.method private a(Ljava/lang/String;)D
    .locals 4

    const-string/jumbo v0, "PX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PX"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v0, "px"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/gifimage/b;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/app/birdnest/gifimage/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/gifimage/c;-><init>(Lcom/alipay/android/app/birdnest/gifimage/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/b;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/birdnest/gifimage/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/b;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string/jumbo v2, "drawable"

    invoke-static {p2, v1, v2, v0}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    const-string/jumbo v1, "alipay_msp_indicatior_loading"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/birdnest/gifimage/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->c:D

    iput-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->d:D

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onLoadFinish()Z
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/template/AbsFBPlugin;->onLoadFinish()Z

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/b;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public requestFocus()V
    .locals 0

    return-void
.end method

.method public setRect(FFFF)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/template/AbsFBPlugin;->setRect(FFFF)Z

    move-result v0

    return v0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    check-cast v0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->resetWheelHelper(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "indicatior"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->i:Z

    const-string/jumbo p2, ""

    :goto_0
    iput-object p2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/b;->a()V

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->i:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "srcheight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/alipay/android/app/birdnest/gifimage/b;->a(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->c:D

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "srcwidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/alipay/android/app/birdnest/gifimage/b;->a(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->d:D

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "defaultvalue"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "failurevalue"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->f:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "imageGray"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->g:Z

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "contentmode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ScaleToFill"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "ScaleAspectFit"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v0, "ScaleAspectFill"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "ScaleAspectAuto"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "Center"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v0, "-webkit-filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webkitFilter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, ")"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "blur"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/alipay/android/app/birdnest/gifimage/b;->a(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->h:I

    move-object p2, v0

    :cond_1
    :goto_1
    const-string/jumbo v0, "visibility-display"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "hidden"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    check-cast v0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->resetWheelHelper(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v0, "phonecashier"

    const-string/jumbo v1, "GifImagePlugin"

    const-string/jumbo v2, "updateCSS"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v4

    :cond_3
    const-string/jumbo v1, "grayscale"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/b;->g:Z

    :cond_4
    move-object p2, v0

    goto :goto_1

    :cond_5
    move-object v0, p2

    goto :goto_0
.end method
