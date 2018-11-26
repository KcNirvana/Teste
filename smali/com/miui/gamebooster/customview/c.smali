.class public Lcom/miui/gamebooster/customview/c;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private hb:Landroid/widget/CheckBox;

.field private hc:Landroid/widget/Button;

.field private hd:Landroid/widget/Button;

.field private he:Lcom/miui/gamebooster/ui/j;

.field private hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

.field private hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

.field private hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

.field private hi:Landroid/widget/LinearLayout;

.field private hj:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/c;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0227

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/XunyouGiftItem;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/XunyouGiftItem;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    const v0, 0x7f0a0229

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/XunyouGiftItem;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    const v0, 0x7f0a0225

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hi:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0226

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hj:Landroid/widget/TextView;

    const v0, 0x7f0a0222

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a022c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/miui/gamebooster/customview/g;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/g;-><init>(Lcom/miui/gamebooster/customview/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070973

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->ka(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070974

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->ka(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070975

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->ka(Ljava/lang/String;I)V

    const v0, 0x7f0a022d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a022e

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->hc:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->jP()V

    new-instance v0, Lcom/miui/gamebooster/customview/h;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/h;-><init>(Lcom/miui/gamebooster/customview/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/customview/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic jT(Lcom/miui/gamebooster/customview/c;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic jU(Lcom/miui/gamebooster/customview/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public jN()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hj:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07097a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public jO()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hi:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->jP()V

    return-void
.end method

.method public jP()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qL:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/sign/a;->qX()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;->qM:Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->kb(Lcom/miui/gamebooster/constants/EnumCollection$GiftStatus;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/sign/a;->qV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070971

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070970

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hd:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public jQ()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->textView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/sign/a;->qW()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->jP()V

    return-void
.end method

.method public jR(Lcom/miui/gamebooster/ui/j;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/customview/c;->he:Lcom/miui/gamebooster/ui/j;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->jZ(Lcom/miui/gamebooster/ui/j;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->jZ(Lcom/miui/gamebooster/ui/j;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->jZ(Lcom/miui/gamebooster/ui/j;)V

    return-void
.end method

.method public jS()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hf:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hh:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hg:Lcom/miui/gamebooster/customview/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/XunyouGiftItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hi:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->hj:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070979

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->he:Lcom/miui/gamebooster/ui/j;

    invoke-interface {v0}, Lcom/miui/gamebooster/ui/j;->ea()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->he:Lcom/miui/gamebooster/ui/j;

    invoke-interface {v0}, Lcom/miui/gamebooster/ui/j;->eb()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a022d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
