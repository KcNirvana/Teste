.class public Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "DisabledCheckBoxPreference.java"


# instance fields
.field private mEnabledAppearance:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->mEnabledAppearance:Z

    return-void
.end method


# virtual methods
.method protected enableView(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->enableView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->mEnabledAppearance:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->enableView(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabledAppearance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->mEnabledAppearance:Z

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->notifyChanged()V

    return-void
.end method
