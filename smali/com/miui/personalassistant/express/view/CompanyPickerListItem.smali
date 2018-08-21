.class public Lcom/miui/personalassistant/express/view/CompanyPickerListItem;
.super Landroid/widget/LinearLayout;
.source "CompanyPickerListItem.java"


# instance fields
.field private mCompanyCode:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCompanyNameView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mCompanyName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mCompanyCode:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mHeaderView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mCompanyNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mHeaderView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getIndexLetter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mCompanyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mCompanyName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/PinyinUtil;->getFirstLetterIgnoreCase(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b09020b

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mHeaderView:Landroid/widget/TextView;

    const v0, 0x1b09020c

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->mCompanyNameView:Landroid/widget/TextView;

    return-void
.end method
