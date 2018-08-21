.class public Lcom/miui/personalassistant/ui/YellowPagePickerListItem;
.super Landroid/widget/LinearLayout;
.source "YellowPagePickerListItem.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mIndexTarget:I

.field private mPresentation:Ljava/lang/String;

.field private mPresentationLayout:Landroid/widget/LinearLayout;

.field private mPresentationTextView:Landroid/widget/TextView;

.field private mSectionHeader:Landroid/widget/TextView;

.field private mSectionLayout:Landroid/widget/LinearLayout;

.field private mSectionLine:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentation:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mData:Ljava/lang/String;

    iput p3, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mIndexTarget:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationLayout:Landroid/widget/LinearLayout;

    const v1, 0x1b0202f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLine:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationLayout:Landroid/widget/LinearLayout;

    const v1, 0x1b0202f3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mIndexTarget:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentation:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mIndexTarget:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mData:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b0903d2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationLayout:Landroid/widget/LinearLayout;

    const v1, 0x1b0903d3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mPresentationTextView:Landroid/widget/TextView;

    const v0, 0x1b0903cf

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLine:Landroid/widget/TextView;

    const v0, 0x1b0903d0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionLayout:Landroid/widget/LinearLayout;

    const v1, 0x1b0903d1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->mSectionHeader:Landroid/widget/TextView;

    return-void
.end method
