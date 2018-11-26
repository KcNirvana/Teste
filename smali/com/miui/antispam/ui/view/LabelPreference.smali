.class public Lcom/miui/antispam/ui/view/LabelPreference;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private XO:Z

.field private XP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/securitycenter/d;->CustomAttributes:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XP:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XO:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public Wv(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XO:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XO:Z

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/LabelPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0a00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XO:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_1
    const v1, 0x7f02006f

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setLayoutResource(I)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XP:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/LabelPreference;->XP:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/LabelPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
