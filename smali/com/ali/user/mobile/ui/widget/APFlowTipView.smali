.class public Lcom/ali/user/mobile/ui/widget/APFlowTipView;
.super Lcom/ali/user/mobile/ui/widget/APLinearLayout;
.source "APFlowTipView.java"


# static fields
.field public static final TYPE_EMPTY:I = 0x11

.field public static final TYPE_NETWORK_ERROR:I = 0x10

.field public static final TYPE_OVER_FLOW:I = 0x13

.field public static final TYPE_WARNING:I = 0x12


# instance fields
.field private a:Lcom/ali/user/mobile/ui/widget/APButton;

.field private b:Lcom/ali/user/mobile/ui/widget/APTextView;

.field private c:Lcom/ali/user/mobile/ui/widget/APTextView;

.field private d:Lcom/ali/user/mobile/ui/widget/APImageView;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->e:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_ap_flow_tip_view:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_FlowTipView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_FlowTipView_alipay_flow_tip_view_type:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->f:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_FlowTipView_alipay_isSimpleMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->e:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$color;->alipay_ap_flow_backgroudColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setBackgroundColor(I)V

    invoke-virtual {p0, v4}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setOrientation(I)V

    return-void
.end method

.method private setActionStr(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getIcon()Lcom/ali/user/mobile/ui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->d:Lcom/ali/user/mobile/ui/widget/APImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->onFinishInflate()V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->action:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->tips:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sub_tips:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->c:Lcom/ali/user/mobile/ui/widget/APTextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->d:Lcom/ali/user/mobile/ui/widget/APImageView;

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->f:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->resetFlowTipType(I)V

    return-void
.end method

.method public resetFlowTipType(I)V
    .locals 2

    iput p1, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->f:I

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->f:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->d:Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_flow_network_signals:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setActionStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p2}, Lcom/ali/user/mobile/ui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsSimpleType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->e:Z

    return-void
.end method

.method public setNoAction()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->a:Lcom/ali/user/mobile/ui/widget/APButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method public setSubTips(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->c:Lcom/ali/user/mobile/ui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->c:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->c:Lcom/ali/user/mobile/ui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    goto :goto_0
.end method
