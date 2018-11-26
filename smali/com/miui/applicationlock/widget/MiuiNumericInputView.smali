.class public Lcom/miui/applicationlock/widget/MiuiNumericInputView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public aco:[Lcom/miui/applicationlock/widget/e;

.field private acp:I

.field private acq:Lcom/miui/applicationlock/widget/d;

.field private acr:Landroid/view/View;

.field private acs:Lcom/miui/applicationlock/widget/d;

.field private act:Lcom/miui/applicationlock/widget/c;

.field private acu:I

.field public acv:[Landroid/widget/LinearLayout;

.field private acw:Lcom/miui/applicationlock/widget/d;

.field private acx:Lcom/miui/applicationlock/widget/d;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/applicationlock/widget/e;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acv:[Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahO(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/applicationlock/widget/e;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acv:[Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahO(Landroid/content/Context;)V

    return-void
.end method

.method private ahM(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 10

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v4, 0x190

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->mContext:Landroid/content/Context;

    const v3, 0x10c0008

    invoke-virtual {v9, v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/miui/applicationlock/widget/u;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/u;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v9
.end method

.method private ahO(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setOrientation(I)V

    new-instance v0, Lcom/miui/applicationlock/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acq:Lcom/miui/applicationlock/widget/d;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acq:Lcom/miui/applicationlock/widget/d;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/miui/applicationlock/widget/d;->ahY(Lcom/miui/applicationlock/widget/d;III)V

    new-instance v0, Lcom/miui/applicationlock/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acw:Lcom/miui/applicationlock/widget/d;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acw:Lcom/miui/applicationlock/widget/d;

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/d;->ahY(Lcom/miui/applicationlock/widget/d;III)V

    new-instance v0, Lcom/miui/applicationlock/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acx:Lcom/miui/applicationlock/widget/d;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acx:Lcom/miui/applicationlock/widget/d;

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/d;->ahY(Lcom/miui/applicationlock/widget/d;III)V

    new-instance v0, Lcom/miui/applicationlock/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acs:Lcom/miui/applicationlock/widget/d;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acs:Lcom/miui/applicationlock/widget/d;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/d;->ahY(Lcom/miui/applicationlock/widget/d;III)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acq:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acw:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acx:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acs:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic ahQ(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acp:I

    return v0
.end method

.method static synthetic ahR(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Lcom/miui/applicationlock/widget/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->act:Lcom/miui/applicationlock/widget/c;

    return-object v0
.end method

.method static synthetic ahS(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acu:I

    return v0
.end method

.method static synthetic ahT(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acp:I

    return p1
.end method

.method static synthetic ahU(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acr:Landroid/view/View;

    return-object p1
.end method

.method static synthetic ahV(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acu:I

    return p1
.end method


# virtual methods
.method public ahJ(Lcom/miui/applicationlock/widget/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->act:Lcom/miui/applicationlock/widget/c;

    return-void
.end method

.method public ahK(Z)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb

    if-ne v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/widget/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_1

    const v3, 0x7f08013f

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v3, 0x7f08013e

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/widget/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const v3, 0x7f020273

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_4

    const v3, 0x7f080031

    :goto_4
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    const v3, 0x7f020272

    goto :goto_3

    :cond_4
    const v3, 0x7f080037

    goto :goto_4

    :cond_5
    return-void
.end method

.method public ahL(Z)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/widget/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const v3, 0x7f020274

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v3, 0x7f02027d

    goto :goto_1

    :cond_2
    return-void
.end method

.method public ahN()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acr:Landroid/view/View;

    return-object v0
.end method

.method public ahP(I)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->aco:[Lcom/miui/applicationlock/widget/e;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Lcom/miui/applicationlock/widget/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acq:Lcom/miui/applicationlock/widget/d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahM(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acq:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {v1, v0}, Lcom/miui/applicationlock/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acw:Lcom/miui/applicationlock/widget/d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahM(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acw:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {v1, v0}, Lcom/miui/applicationlock/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acx:Lcom/miui/applicationlock/widget/d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahM(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acx:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {v1, v0}, Lcom/miui/applicationlock/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acs:Lcom/miui/applicationlock/widget/d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahM(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->acs:Lcom/miui/applicationlock/widget/d;

    invoke-virtual {v1, v0}, Lcom/miui/applicationlock/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
