.class public Lcom/miui/gamebooster/customview/XunyouGiftItem;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic hD:[I


# instance fields
.field private hA:Landroid/widget/Button;

.field private hB:Landroid/widget/ImageView;

.field private hC:Landroid/widget/TextView;

.field private hy:Lcom/miui/gamebooster/ui/j;

.field private hz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hB:Landroid/widget/ImageView;

    const v0, 0x7f0a0230

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hC:Landroid/widget/TextView;

    const v0, 0x7f0a0231

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070972

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic kc()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hD:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hD:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->values()[Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hD:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public jZ(Lcom/miui/gamebooster/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hy:Lcom/miui/gamebooster/ui/j;

    return-void
.end method

.method public ka(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hz:I

    return-void
.end method

.method public kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kc()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hB:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hB:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hA:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hy:Lcom/miui/gamebooster/ui/j;

    iget v1, p0, Lcom/miui/gamebooster/customview/XunyouGiftItem;->hz:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/ui/j;->ec(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0231
        :pswitch_0
    .end packed-switch
.end method
