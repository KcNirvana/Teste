.class public Lcom/miui/payment/ui/view/MethodView;
.super Landroid/widget/FrameLayout;
.source "MethodView.java"


# instance fields
.field private mExpandButton:Landroid/widget/ImageView;

.field private mMethodCode:I

.field private mMethodDesc:Ljava/lang/String;

.field private mMethodView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/payment/ui/view/MethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/view/MethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getMethodCode()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodCode:I

    return v0
.end method

.method public getMethodDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodDesc:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1b09031d

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/MethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodView:Landroid/widget/TextView;

    const v0, 0x1b09031e

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/MethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/payment/ui/view/MethodView;->mExpandButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setDefaultPaymentMethod()V
    .locals 2

    invoke-static {}, Lcom/miui/payment/utils/MethodHelper;->getDefaultMethod()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/MethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/payment/utils/MethodHelper;->getDefaultMethodDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/payment/ui/view/MethodView;->setPaymentMethod(ILjava/lang/String;)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/ui/view/MethodView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/MethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1b0f006f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/payment/ui/view/MethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1b0f0070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public setPaymentMethod(ILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodCode:I

    iput-object p2, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/MethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/payment/utils/MethodHelper;->getDefaultMethodDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/MethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/payment/ui/view/MethodView;->mMethodCode:I

    invoke-static {v1, v2}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
