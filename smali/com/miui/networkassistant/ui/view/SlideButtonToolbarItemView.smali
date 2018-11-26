.class public Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mNameView:Landroid/widget/TextView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f030192

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;->onToolbarItemClick(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p0, p0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setName(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    return-void
.end method

.method public setToolbarItemEnable(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    return-void
.end method
