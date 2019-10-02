.class public Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIPlusButtonBar.java"


# instance fields
.field private vLeft:Landroid/widget/TextView;

.field private vLeftLine:Landroid/view/View;

.field private vMiddle:Landroid/widget/TextView;

.field private vRight:Landroid/widget/TextView;

.field private vRightLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p4, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private setButtonColor(Landroid/widget/TextView;II)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$color;->common_c_0:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_buttonbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_left_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeftLine:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_middle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_right_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRightLine:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRight:Landroid/widget/TextView;

    return-void
.end method

.method public setButtonEnabled(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRight:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setButtonVisibility(ZZZ)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeftLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeftLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRightLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRightLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setLeftButtonColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonColor(Landroid/widget/TextView;II)V

    return-void
.end method

.method public setMiddleButtonColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonColor(Landroid/widget/TextView;II)V

    return-void
.end method

.method public setOneButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonVisibility(ZZZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightButtonColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRight:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonColor(Landroid/widget/TextView;II)V

    return-void
.end method

.method public setThreeButton(IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 8

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-lez p3, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setThreeButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setThreeButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonVisibility(ZZZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p4}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, p2, p5}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vRight:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, p3, p6}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTwoButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setTwoButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTwoButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButtonVisibility(ZZZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->vMiddle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, p2, p4}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusButtonBar;->setButton(Landroid/widget/TextView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
