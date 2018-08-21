.class public Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;
.super Landroid/widget/RelativeLayout;
.source "SelectCountryItemView.java"


# instance fields
.field private mCountryCode:Landroid/widget/TextView;

.field private mCountryName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->initView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x28

    const/16 v8, 0x10

    const/high16 v7, 0x41800000    # 16.0f

    const/16 v6, 0xf

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    const v4, -0xcccccd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    const v4, -0xaf8251

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
