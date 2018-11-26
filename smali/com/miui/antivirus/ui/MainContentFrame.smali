.class public Lcom/miui/antivirus/ui/MainContentFrame;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic aph:[I


# instance fields
.field private aoS:Landroid/widget/LinearLayout;

.field private aoT:Lcom/miui/antivirus/ui/LineAnimationView;

.field private aoU:Landroid/widget/ImageView;

.field private aoV:Lcom/miui/antivirus/utils/SecurityStatus;

.field private aoW:Lcom/miui/common/d/f;

.field private aoX:Landroid/widget/RelativeLayout;

.field private aoY:Lcom/miui/common/customview/ScoreTextView;

.field private aoZ:Landroid/widget/ImageView;

.field private apa:Landroid/widget/ImageView;

.field private apb:Landroid/widget/RelativeLayout;

.field private apc:Landroid/widget/RelativeLayout;

.field private apd:Landroid/widget/TextView;

.field private ape:Landroid/widget/TextView;

.field private apf:Landroid/widget/TextView;

.field private apg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/MainContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/ui/MainContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoV:Lcom/miui/antivirus/utils/SecurityStatus;

    return-void
.end method

.method static synthetic avA(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apc:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic avB(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->ape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic avC(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic avD(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic avE(Lcom/miui/antivirus/ui/MainContentFrame;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antivirus/ui/MainContentFrame;->avv(ZIZ)V

    return-void
.end method

.method private static synthetic avF()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/ui/MainContentFrame;->aph:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/ui/MainContentFrame;->aph:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/utils/SecurityStatus;->values()[Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anV:Lcom/miui/antivirus/utils/SecurityStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/SecurityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anW:Lcom/miui/antivirus/utils/SecurityStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/SecurityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/SecurityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/utils/SecurityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/miui/antivirus/ui/MainContentFrame;->aph:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private avv(ZIZ)V
    .locals 12

    const-wide/16 v6, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    const v0, 0x7f070611

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoU:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v0, 0x7f020344

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoZ:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    const v0, 0x7f0202d2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f080024

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apa:Landroid/widget/ImageView;

    const v1, 0x7f0202d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apd:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoZ:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apa:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apd:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoU:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v5

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v10, v2, v4

    const/4 v3, 0x3

    aput-object v11, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f070743

    goto :goto_0

    :cond_2
    const v0, 0x7f070733

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f020343

    goto :goto_1

    :cond_4
    const v0, 0x7f0202d5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f080023

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoZ:Landroid/widget/ImageView;

    const v1, 0x7f0202d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apa:Landroid/widget/ImageView;

    const v1, 0x7f0202d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apd:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apd:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic avw(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoU:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic avx(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/common/customview/ScoreTextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoY:Lcom/miui/common/customview/ScoreTextView;

    return-object v0
.end method

.method static synthetic avy(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoZ:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic avz(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apa:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;
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

.method public avk()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/LineAnimationView;->setVisibility(I)V

    return-void
.end method

.method public avl(ILjava/lang/Boolean;Z)V
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
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoY:Lcom/miui/common/customview/ScoreTextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apg:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->ape:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->avj(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

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

    new-instance v0, Lcom/miui/antivirus/ui/i;

    invoke-direct {v0, p0, p2, v8, p1}, Lcom/miui/antivirus/ui/i;-><init>(Lcom/miui/antivirus/ui/MainContentFrame;Ljava/lang/Boolean;ZI)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_0
    move v8, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v8, p1, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->avv(ZIZ)V

    goto :goto_1
.end method

.method public avm()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apa:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoY:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/ScoreTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public avn(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoW:Lcom/miui/common/d/f;

    return-void
.end method

.method public avo(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public avp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoY:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ScoreTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avq(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avr(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->ape:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avs()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/LineAnimationView;->avG(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/LineAnimationView;->invalidate()V

    return-void
.end method

.method public avt()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/LineAnimationView;->avG(Z)V

    return-void
.end method

.method public avu(Lcom/miui/antivirus/utils/SecurityStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoV:Lcom/miui/antivirus/utils/SecurityStatus;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/miui/antivirus/ui/MainContentFrame;->avF()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/utils/SecurityStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoV:Lcom/miui/antivirus/utils/SecurityStatus;

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/LineAnimationView;->avH(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/LineAnimationView;->avH(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0047

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoW:Lcom/miui/common/d/f;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a003f

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoW:Lcom/miui/common/d/f;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0311

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0207

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoW:Lcom/miui/common/d/f;

    const/16 v1, 0x40d

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01dc

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoY:Lcom/miui/common/customview/ScoreTextView;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoY:Lcom/miui/common/customview/ScoreTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setNumber(I)V

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoS:Landroid/widget/LinearLayout;

    const v0, 0x7f0a030c

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apb:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03a2

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoZ:Landroid/widget/ImageView;

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apa:Landroid/widget/ImageView;

    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apd:Landroid/widget/TextView;

    const v0, 0x7f0a0308

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/LineAnimationView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoT:Lcom/miui/antivirus/ui/LineAnimationView;

    const v0, 0x7f0a030b

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoX:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apg:Landroid/widget/TextView;

    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apf:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->ape:Landroid/widget/TextView;

    const v0, 0x7f0a0207

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoU:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoU:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->avm()V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v4, v2, v1

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame;->aoS:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v1, v2, v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->apb:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
