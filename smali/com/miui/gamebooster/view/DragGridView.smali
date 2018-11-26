.class public Lcom/miui/gamebooster/view/DragGridView;
.super Landroid/widget/GridView;
.source ""


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field private nA:I

.field private nB:Landroid/graphics/Bitmap;

.field private nC:Landroid/widget/ImageView;

.field private nD:I

.field private nE:I

.field private nF:Z

.field private nG:I

.field private nH:Ljava/lang/Runnable;

.field private nI:I

.field private nJ:Z

.field private nK:I

.field private nL:I

.field private nM:I

.field private nN:I

.field private nO:Landroid/view/View;

.field private nP:I

.field private nQ:I

.field private nR:Landroid/os/Vibrator;

.field private nS:Landroid/view/WindowManager$LayoutParams;

.field private nT:I

.field private nU:I

.field private nm:I

.field private nn:I

.field private no:I

.field private np:Z

.field private nq:I

.field private nr:I

.field ns:Ljava/lang/Runnable;

.field private nt:I

.field private nu:I

.field private nv:Lcom/miui/gamebooster/view/c;

.field private nw:Landroid/graphics/Bitmap;

.field private nx:Landroid/widget/ImageView;

.field private ny:J

.field private nz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/view/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/view/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/miui/gamebooster/view/DragGridView;->ny:J

    iput-boolean v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nF:Z

    iput v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    iput v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    iput-boolean v4, p0, Lcom/miui/gamebooster/view/DragGridView;->np:Z

    iput v4, p0, Lcom/miui/gamebooster/view/DragGridView;->nG:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/gamebooster/view/d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/view/d;-><init>(Lcom/miui/gamebooster/view/DragGridView;)V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nH:Ljava/lang/Runnable;

    iput v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    iput v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nn:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nm:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->no:I

    new-instance v0, Lcom/miui/gamebooster/view/e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/view/e;-><init>(Lcom/miui/gamebooster/view/DragGridView;)V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->ns:Ljava/lang/Runnable;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nR:Landroid/os/Vibrator;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/miui/gamebooster/view/DragGridView;->qm(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nP:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nQ:I

    iget-boolean v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nJ:Z

    if-nez v0, :cond_0

    iput v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    :cond_0
    return-void
.end method

.method static synthetic qA(Lcom/miui/gamebooster/view/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    return v0
.end method

.method static synthetic qB(Lcom/miui/gamebooster/view/DragGridView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    return-object v0
.end method

.method static synthetic qC(Lcom/miui/gamebooster/view/DragGridView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nR:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic qD(Lcom/miui/gamebooster/view/DragGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/view/DragGridView;->np:Z

    return p1
.end method

.method static synthetic qE(Lcom/miui/gamebooster/view/DragGridView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    return p1
.end method

.method static synthetic qF(Lcom/miui/gamebooster/view/DragGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nF:Z

    return p1
.end method

.method static synthetic qG(Lcom/miui/gamebooster/view/DragGridView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/view/DragGridView;->qg(II)V

    return-void
.end method

.method static synthetic qH(Lcom/miui/gamebooster/view/DragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/view/DragGridView;->qj(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic qI(Lcom/miui/gamebooster/view/DragGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qt()V

    return-void
.end method

.method private qg(II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_3

    :goto_0
    if-ge p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/view/DragGridView;->ql(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/view/DragGridView;->ql(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    if-le p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    add-int/2addr v0, p1

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/view/DragGridView;->ql(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/view/DragGridView;->ql(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/miui/gamebooster/view/g;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/view/g;-><init>(Lcom/miui/gamebooster/view/DragGridView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static qh(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    const v0, 0x3f8ccccd    # 1.1f

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static qi(III)I
    .locals 1

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-lt p0, p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    return v0

    :cond_1
    return p0
.end method

.method private qj(Landroid/graphics/Bitmap;II)V
    .locals 6

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/gamebooster/view/DragGridView;->qh(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/miui/gamebooster/view/DragGridView;->nM:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/miui/gamebooster/view/DragGridView;->nK:I

    add-int/2addr v4, v5

    sub-int v1, v4, v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/miui/gamebooster/view/DragGridView;->nL:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gamebooster/view/DragGridView;->nP:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private qk(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nM:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nK:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nL:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nP:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nC:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nC:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nC:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ql(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "translationX"

    new-array v1, v3, [F

    aput p2, v1, v4

    aput p3, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    new-array v2, v3, [F

    aput p4, v2, v4

    aput p5, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v2
.end method

.method private static qm(Landroid/content/Context;)I
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private qn(Landroid/view/View;II)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-le p2, v0, :cond_2

    :cond_1
    return v3

    :cond_2
    if-lt p3, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    if-le p3, v0, :cond_4

    :cond_3
    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private qo(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nM:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nK:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nL:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nP:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nS:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/view/DragGridView;->qq(II)V

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nm:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qr()V

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nm:I

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->ns:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/DragGridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->no:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qr()V

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->no:I

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->ns:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/DragGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nn:I

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qr()V

    goto :goto_0
.end method

.method private qp()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nn:I

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qr()V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nv:Lcom/miui/gamebooster/view/c;

    invoke-interface {v0, v2}, Lcom/miui/gamebooster/view/c;->qT(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nv:Lcom/miui/gamebooster/view/c;

    invoke-interface {v0}, Lcom/miui/gamebooster/view/c;->qU()V

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qs()V

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qt()V

    iput v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nz:I

    iput v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    return-void
.end method

.method private qq(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/view/DragGridView;->pointToPosition(II)I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gamebooster/view/DragGridView;->np:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nE:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nv:Lcom/miui/gamebooster/view/c;

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    invoke-interface {v1, v2, v0}, Lcom/miui/gamebooster/view/c;->qS(II)V

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nv:Lcom/miui/gamebooster/view/c;

    invoke-interface {v1, v0}, Lcom/miui/gamebooster/view/c;->qT(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/view/f;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/gamebooster/view/f;-><init>(Lcom/miui/gamebooster/view/DragGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private qr()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->ns:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private qs()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private qt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nC:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nC:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nC:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method static synthetic qv(Lcom/miui/gamebooster/view/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nn:I

    return v0
.end method

.method static synthetic qw(Lcom/miui/gamebooster/view/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nq:I

    return v0
.end method

.method static synthetic qx(Lcom/miui/gamebooster/view/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nt:I

    return v0
.end method

.method static synthetic qy(Lcom/miui/gamebooster/view/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    return v0
.end method

.method static synthetic qz(Lcom/miui/gamebooster/view/DragGridView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nw:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nt:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nt:I

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nz:I

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nz:I

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nz:I

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nE:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nH:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/miui/gamebooster/view/DragGridView;->ny:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nA:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nt:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nM:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nL:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nt:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nK:I

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nw:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nB:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nB:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nB:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nt:I

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gamebooster/view/DragGridView;->qk(Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->qn(Landroid/view/View;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nu:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nQ:I

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nF:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qt()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/view/DragGridView;->ns:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qt()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nr:I

    if-lez v1, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nr:I

    div-int v1, v2, v1

    if-lez v1, :cond_1

    :goto_0
    if-eq v1, v0, :cond_4

    iget v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nr:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/miui/gamebooster/view/DragGridView;->nD:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    :cond_2
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    return-void

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nx:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nT:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nU:I

    iget v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nT:I

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nM:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gamebooster/view/DragGridView;->nM:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/view/DragGridView;->qi(III)I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/view/DragGridView;->nU:I

    iget v2, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/DragGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gamebooster/view/DragGridView;->nO:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gamebooster/view/DragGridView;->nN:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/gamebooster/view/DragGridView;->qi(III)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/view/DragGridView;->qo(II)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gamebooster/view/DragGridView;->qp()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nF:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public qu(I)V
    .locals 3

    const-string/jumbo v0, "DragGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nE:I

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    instance-of v0, p1, Lcom/miui/gamebooster/view/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gamebooster/view/c;

    iput-object p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nv:Lcom/miui/gamebooster/view/c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "the adapter must be implements DragGridAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iput p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nr:I

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iput p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nD:I

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/DragGridView;->nJ:Z

    iput p1, p0, Lcom/miui/gamebooster/view/DragGridView;->nI:I

    return-void
.end method
