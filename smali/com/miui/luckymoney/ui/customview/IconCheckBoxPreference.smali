.class public Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private mChecked:Z

.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->setLayoutResource(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a025a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a025b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mChecked:Z

    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mChecked:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setSlidingButtonListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setTextView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->notifyChanged()V

    return-void
.end method
