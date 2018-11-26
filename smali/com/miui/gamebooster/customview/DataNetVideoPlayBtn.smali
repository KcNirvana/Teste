.class public Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field hL:Landroid/widget/TextView;

.field hM:Landroid/view/View;

.field hN:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f030071

    invoke-static {p1, v0, p0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a017b

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hN:Landroid/view/ViewGroup;

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hL:Landroid/widget/TextView;

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hM:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public ki()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hM:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hN:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hN:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public kj(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->hL:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/a/e;->fm(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/DataNetVideoPlayBtn;->ki()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method
