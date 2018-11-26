.class public Lcom/miui/securityscan/ui/main/OptimizingBar;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic HM:[I


# instance fields
.field private HA:Landroid/view/View;

.field private HB:Landroid/view/View;

.field private HC:Landroid/widget/TextView;

.field private HD:Landroid/widget/TextView;

.field private HE:Landroid/widget/TextView;

.field private HF:Landroid/widget/Button;

.field private HG:Landroid/widget/TextView;

.field private HH:Landroid/widget/TextView;

.field private HI:Landroid/widget/TextView;

.field private HJ:Landroid/widget/TextView;

.field private HK:Landroid/widget/TextView;

.field private HL:Landroid/widget/TextView;

.field private Hp:Landroid/os/Handler;

.field private Hq:Landroid/widget/ImageView;

.field private Hr:Landroid/widget/ImageView;

.field private Hs:Landroid/widget/ImageView;

.field private Ht:Landroid/widget/ImageView;

.field private Hu:Landroid/widget/ImageView;

.field private Hv:Landroid/widget/ImageView;

.field private Hw:Landroid/widget/ImageView;

.field private Hx:Landroid/widget/ImageView;

.field private Hy:Landroid/widget/ImageView;

.field private Hz:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic HF()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HM:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HM:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/OptimizeItem;->values()[Lcom/miui/securityscan/scanner/OptimizeItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HM:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public HB(Lcom/miui/securityscan/scanner/OptimizeItem;I)V
    .locals 6

    const/16 v5, 0x64

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070687

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HF()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p2, v5, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hw:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hw:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p2, v5, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hu:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hu:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p2, v5, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hv:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public HC(Lcom/miui/securityscan/scanner/OptimizeItem;)V
    .locals 6

    const/16 v2, 0x8

    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    const v1, 0x7f070835

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE(Lcom/miui/securityscan/scanner/OptimizeItem;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HF()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public HD(Lcom/miui/securityscan/scanner/OptimizeItem;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HF()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, p2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public HE(Lcom/miui/securityscan/scanner/OptimizeItem;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HF()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HI:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HG:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HH:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hp:Landroid/os/Handler;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hp:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a02b8
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    const v6, 0x7f0a02ba

    const v5, 0x7f0a02b9

    const v4, 0x7f0a00c6

    const v3, 0x7f0a00c4

    const v2, 0x7f0200ac

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HF:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HL:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HL:Landroid/widget/TextView;

    const v1, 0x7f070836

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HJ:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HJ:Landroid/widget/TextView;

    const v1, 0x7f070837

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HK:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HK:Landroid/widget/TextView;

    const v1, 0x7f070838

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HG:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HG:Landroid/widget/TextView;

    const v1, 0x7f070834

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HH:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HH:Landroid/widget/TextView;

    const v1, 0x7f070834

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    const v1, 0x7f0a02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    const v1, 0x7f0a02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    const v1, 0x7f0a02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB:Landroid/view/View;

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hw:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hz:Landroid/view/View;

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hu:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HA:Landroid/view/View;

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hv:Landroid/widget/ImageView;

    return-void
.end method

.method public reset()V
    .locals 9

    const v8, 0x7f070834

    const v7, 0x7f070687

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Ht:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hr:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hx:Landroid/widget/ImageView;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hq:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hs:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HI:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HG:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hw:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hu:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->Hv:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
