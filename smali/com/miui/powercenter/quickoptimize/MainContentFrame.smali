.class public Lcom/miui/powercenter/quickoptimize/MainContentFrame;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aDU:Landroid/widget/LinearLayout;

.field private aDV:Lcom/miui/powercenter/view/GradientBall;

.field private aDW:Lcom/miui/common/d/f;

.field private aDX:Landroid/widget/RelativeLayout;

.field private aDY:Landroid/widget/TextView;

.field private aDZ:Landroid/widget/TextView;

.field private aEa:Landroid/widget/RelativeLayout;

.field private aEb:Lcom/miui/common/customview/ScoreTextView;

.field private aEc:Landroid/widget/TextView;

.field private aEd:Landroid/widget/RelativeLayout;

.field private aEe:Landroid/widget/TextView;

.field private aEf:Landroid/widget/TextView;

.field private aEg:Landroid/widget/TextView;

.field private aEh:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->mContext:Landroid/content/Context;

    return-void
.end method

.method private aPO(ZI)V
    .locals 10

    const-wide/16 v6, 0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f070743

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0901fd

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0c001e

    invoke-virtual {v1, v8, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEc:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEe:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEe:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEc:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEe:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v5

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const v0, 0x7f070513

    goto :goto_0
.end method

.method static synthetic aPP(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Lcom/miui/powercenter/view/GradientBall;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    return-object v0
.end method

.method static synthetic aPQ(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Lcom/miui/common/customview/ScoreTextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEb:Lcom/miui/common/customview/ScoreTextView;

    return-object v0
.end method

.method static synthetic aPR(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEd:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic aPS(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aPT(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aPU(Lcom/miui/powercenter/quickoptimize/MainContentFrame;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPO(ZI)V

    return-void
.end method


# virtual methods
.method public aPA(J)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x42480000    # 50.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/G;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/G;-><init>(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public aPB(IZ)V
    .locals 12

    const-wide/16 v6, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEb:Lcom/miui/common/customview/ScoreTextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEh:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEf:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v9, v2, v5

    const/4 v3, 0x1

    aput-object v10, v2, v3

    aput-object v11, v2, v4

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/miui/powercenter/quickoptimize/F;

    invoke-direct {v0, p0, v8, p1}, Lcom/miui/powercenter/quickoptimize/F;-><init>(Lcom/miui/powercenter/quickoptimize/MainContentFrame;ZI)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_0
    move v8, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPO(ZI)V

    goto :goto_1
.end method

.method public aPC()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEe:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEb:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEh:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public aPD(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    invoke-virtual {v0, p1, p2}, Lcom/miui/powercenter/view/GradientBall;->aUm(FZ)V

    return-void
.end method

.method public aPE(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDW:Lcom/miui/common/d/f;

    return-void
.end method

.method public aPF(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public aPG(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/GradientBall;->setAlpha(F)V

    return-void
.end method

.method public aPH(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEb:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public aPI(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public aPJ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEf:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public aPK()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/GradientBall;->aUn(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    invoke-virtual {v0}, Lcom/miui/powercenter/view/GradientBall;->startAnimation()V

    return-void
.end method

.method public aPL()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/GradientBall;->aUn(Z)V

    return-void
.end method

.method public aPM()V
    .locals 12

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEa:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDX:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPN(Z)V

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOV()I

    move-result v0

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aOP()I

    move-result v1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDZ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0c0019

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOR()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDY:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->mContext:Landroid/content/Context;

    const v3, 0x7f070484

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDZ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDX:Landroid/widget/RelativeLayout;

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEa:Landroid/widget/RelativeLayout;

    const-wide/16 v6, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDZ:Landroid/widget/TextView;

    const-wide/16 v6, 0x1f4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDY:Landroid/widget/TextView;

    const-wide/16 v6, 0x1f4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2

    const/4 v2, 0x2

    aput-object v11, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPz(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPA(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDZ:Landroid/widget/TextView;

    const v1, 0x7f07047f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDY:Landroid/widget/TextView;

    const v1, 0x7f070480

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDZ:Landroid/widget/TextView;

    const v1, 0x7f070481

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDY:Landroid/widget/TextView;

    const v1, 0x7f070482

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public aPN(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/GradientBall;->aUo(Z)V

    return-void
.end method

.method public aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;
    .locals 4

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public aPy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/GradientBall;->setVisibility(I)V

    return-void
.end method

.method public aPz(J)Landroid/animation/ObjectAnimator;
    .locals 9

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPx(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0047

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDW:Lcom/miui/common/d/f;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a003f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDW:Lcom/miui/common/d/f;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01dc

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEb:Lcom/miui/common/customview/ScoreTextView;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEb:Lcom/miui/common/customview/ScoreTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setNumber(I)V

    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDU:Landroid/widget/LinearLayout;

    const v0, 0x7f0a030e

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEc:Landroid/widget/TextView;

    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEe:Landroid/widget/TextView;

    const v0, 0x7f0a0308

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/GradientBall;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDV:Lcom/miui/powercenter/view/GradientBall;

    const v0, 0x7f0a030b

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEa:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0313

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDX:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEh:Landroid/widget/TextView;

    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEd:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    const v0, 0x7f0a0315

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDZ:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aEf:Landroid/widget/TextView;

    const v0, 0x7f0a0316

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDY:Landroid/widget/TextView;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPC()V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDU:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aDU:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
