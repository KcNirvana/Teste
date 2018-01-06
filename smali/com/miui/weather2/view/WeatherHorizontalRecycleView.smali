.class public Lcom/miui/weather2/view/WeatherHorizontalRecycleView;
.super Landroid/support/a/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/view/WeatherScrollView$b;


# instance fields
.field protected h:Ljava/lang/Runnable;

.field private i:I

.field private j:I

.field private k:[I

.field private l:Landroid/support/a/a/l;

.field private m:Lcom/miui/weather2/model/l;

.field private n:F

.field private final o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/a/a/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->k:[I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->p:Z

    new-instance v0, Lcom/miui/weather2/view/as;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/as;-><init>(Lcom/miui/weather2/view/WeatherHorizontalRecycleView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private a(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->setTranslationX(F)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/WeatherHorizontalRecycleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->u()V

    return-void
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private u()V
    .locals 14

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    invoke-virtual {v0}, Lcom/miui/weather2/model/l;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    invoke-virtual {v0}, Lcom/miui/weather2/model/l;->a()I

    move-result v7

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getWidth()I

    move-result v8

    move v4, v3

    move v2, v5

    move v0, v3

    :goto_0
    if-ge v4, v5, :cond_6

    invoke-virtual {p0, v4}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->a(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/a/r$w;->e()I

    move-result v1

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-eqz v1, :cond_1

    if-gez v10, :cond_2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    shr-int/lit8 v12, v9, 0x1

    if-le v10, v12, :cond_2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v2, -0x1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v10, v7, -0x1

    if-eq v1, v10, :cond_3

    if-le v11, v8, :cond_4

    sub-int v10, v11, v8

    shr-int/lit8 v9, v9, 0x1

    if-le v10, v9, :cond_4

    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Lcom/miui/weather2/model/l;->c(I)Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;

    move-result-object v9

    iget-boolean v9, v9, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;->mVisiblity:Z

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_info_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "scroll"

    const-string v11, "info_view"

    const-string v12, "outside"

    invoke-static {v10, v6, v11, v12, v9}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    add-int/lit8 v1, v1, -0x1

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/miui/weather2/model/l;->a(IZ)V

    :cond_5
    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_2
    add-int/lit8 v4, v7, -0x2

    if-ge v1, v4, :cond_9

    iget-object v4, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    invoke-virtual {v4, v1}, Lcom/miui/weather2/model/l;->c(I)Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;

    add-int/lit8 v4, v1, 0x1

    if-lt v4, v0, :cond_7

    add-int v5, v0, v2

    if-lt v4, v5, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    invoke-virtual {v4, v1, v3}, Lcom/miui/weather2/model/l;->a(IZ)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->k:[I

    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getLocationOnScreen([I)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/a/a/r;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    int-to-float v0, v1

    iput v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->n:F

    iput v2, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->i:I

    iput v1, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->j:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->j:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->i:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getReportRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/a/a/r;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    iput v2, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->n:F

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->n:F

    sub-float v1, v2, v1

    iput v2, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->n:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->l:Landroid/support/a/a/l;

    invoke-virtual {v3}, Landroid/support/a/a/l;->i()I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->l:Landroid/support/a/a/l;

    invoke-virtual {v4}, Landroid/support/a/a/l;->k()I

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->l:Landroid/support/a/a/l;

    invoke-virtual {v5}, Landroid/support/a/a/l;->y()I

    move-result v5

    iget-boolean v6, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->p:Z

    if-nez v6, :cond_2

    if-nez v3, :cond_1

    cmpg-float v6, v1, v7

    if-lez v6, :cond_0

    :cond_1
    add-int/lit8 v6, v5, -0x1

    if-ne v4, v6, :cond_2

    cmpl-float v6, v1, v7

    if-gez v6, :cond_0

    :cond_2
    if-nez v3, :cond_3

    cmpl-float v3, v2, v7

    if-gez v3, :cond_4

    :cond_3
    add-int/lit8 v3, v5, -0x1

    if-ne v4, v3, :cond_0

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_0

    :cond_4
    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->p:Z

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->a(F)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->p:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->t()V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->p:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/support/a/a/r$a;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/miui/weather2/model/l;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->m:Lcom/miui/weather2/model/l;

    invoke-super {p0, p1}, Landroid/support/a/a/r;->setAdapter(Landroid/support/a/a/r$a;)V

    return-void
.end method

.method public setLayoutManager(Landroid/support/a/a/r$i;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/support/a/a/l;

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherHorizontalRecycleView;->l:Landroid/support/a/a/l;

    invoke-super {p0, p1}, Landroid/support/a/a/r;->setLayoutManager(Landroid/support/a/a/r$i;)V

    return-void
.end method
