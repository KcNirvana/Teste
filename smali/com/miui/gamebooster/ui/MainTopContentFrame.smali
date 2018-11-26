.class public Lcom/miui/gamebooster/ui/MainTopContentFrame;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic Q:[I

.field private static final synthetic R:[I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/miui/common/d/f;

.field private G:Landroid/widget/ImageView;

.field private H:Lcom/miui/common/d/f;

.field private I:Z

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/ImageView;

.field private O:Z

.field private P:Ljava/lang/String;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic ae(Lcom/miui/gamebooster/ui/MainTopContentFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic af(Lcom/miui/gamebooster/ui/MainTopContentFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->O:Z

    return p1
.end method

.method private static synthetic ag()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Q:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Q:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->values()[Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qx:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qy:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qz:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qA:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->qB:Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Q:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic ah()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->R:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->R:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->values()[Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qH:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qI:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qJ:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->R:[I

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
.method public U()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->O:Z

    return v0
.end method

.method public V(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->I:Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->A:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public W(Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;I)V
    .locals 5

    invoke-static {}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ag()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/constants/EnumCollection$CleanStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07095b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070940

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f07093d

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07093e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public X(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->F:Lcom/miui/common/d/f;

    return-void
.end method

.method public Y(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V
    .locals 5

    const v4, 0x7f0800b6

    const v2, 0x7f020179

    const/4 v3, -0x1

    invoke-static {}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ah()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070906

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "not_open"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070933

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "activat"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070934

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "overdue"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public Z(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0a023a

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090135

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1
.end method

.method public aa()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->P:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public ab(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->O:Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->B:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->mContext:Landroid/content/Context;

    const v1, 0x7f04000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->z:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->z:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->N:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->z:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/gamebooster/ui/C;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/ui/C;-><init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public ac()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->G:Landroid/widget/ImageView;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->G:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->H:Lcom/miui/common/d/f;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x71

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/common/d/f;->aLh(ILjava/lang/Object;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public ad(Ljava/lang/Boolean;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->G:Landroid/widget/ImageView;

    const-string/jumbo v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->D:Landroid/widget/ImageView;

    const-string/jumbo v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    const-string/jumbo v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/D;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/D;-><init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->P:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->F:Lcom/miui/common/d/f;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0239
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0234

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->N:Landroid/widget/ImageView;

    const v0, 0x7f0a0237

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->D:Landroid/widget/ImageView;

    const v0, 0x7f0a0235

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->G:Landroid/widget/ImageView;

    const v0, 0x7f0a023b

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->K:Landroid/widget/ImageView;

    const v0, 0x7f0a023c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->M:Landroid/widget/TextView;

    const v0, 0x7f0a023e

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->L:Landroid/widget/TextView;

    const v0, 0x7f0a0236

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->C:Landroid/widget/ImageView;

    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->E:Landroid/widget/TextView;

    const v0, 0x7f0a0233

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->B:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a023d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->A:Landroid/widget/TextView;

    const v0, 0x7f0a0239

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->J:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/ui/B;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/B;-><init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->H:Lcom/miui/common/d/f;

    return-void
.end method
