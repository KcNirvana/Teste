.class public Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;
.super Lmiui/preference/PreferenceActivity;
.source ""


# instance fields
.field aGo:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private aGp:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field private aGq:I

.field private aGr:Lmiui/preference/ValuePreference;

.field private aGs:Landroid/preference/CheckBoxPreference;

.field private aGt:Landroid/preference/CheckBoxPreference;

.field private aGu:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field private aGv:I

.field private aGw:Lmiui/preference/ValuePreference;

.field aGx:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field aGy:Landroid/preference/Preference$OnPreferenceClickListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/f;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/f;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/bootshutdown/g;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/g;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGo:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/miui/powercenter/bootshutdown/h;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/h;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGx:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/miui/powercenter/bootshutdown/i;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/i;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGy:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private aRR()V
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/c;->aSN(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/c;->aSO(Landroid/content/Context;)V

    return-void
.end method

.method private aRS()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->beR()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/powercenter/bootshutdown/c;->aSP()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/c;->aSL(Landroid/content/Context;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private aRT()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private aRU()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->beS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/powercenter/a;->beX()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/a;->beW()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/c;->aSM(Landroid/content/Context;)V

    return v4

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method private aRV()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "time_shutdown"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGw:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGw:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "time_boot"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGr:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGr:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGw:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGr:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "button_boot"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGs:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "button_shutdown"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGt:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "repeat_boot"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGp:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const-string/jumbo v0, "repeat_shutdown"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGu:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    return-void
.end method

.method private aRW()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGp:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTm()Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/b;->aSE()I

    move-result v0

    return v0
.end method

.method private aRX()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGu:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTm()Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/b;->aSE()I

    move-result v0

    return v0
.end method

.method private aRY()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGs:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRS()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGt:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRU()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGr:Lmiui/preference/ValuePreference;

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    invoke-static {v1}, Lcom/miui/powercenter/a/k;->bce(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGw:Lmiui/preference/ValuePreference;

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    invoke-static {v1}, Lcom/miui/powercenter/a/k;->bce(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/b;

    invoke-static {}, Lcom/miui/powercenter/a;->beV()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    invoke-virtual {v0, p0, v3}, Lcom/miui/powercenter/bootshutdown/b;->aSD(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGp:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGp:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTl(Lcom/miui/powercenter/bootshutdown/b;)V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/b;

    invoke-static {}, Lcom/miui/powercenter/a;->beW()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    invoke-virtual {v0, p0, v3}, Lcom/miui/powercenter/bootshutdown/b;->aSD(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGu:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGu:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTl(Lcom/miui/powercenter/bootshutdown/b;)V

    return-void
.end method

.method private aRZ()Z
    .locals 7

    invoke-static {}, Lcom/miui/powercenter/a;->beR()Z

    move-result v0

    invoke-static {}, Lcom/miui/powercenter/a;->beS()Z

    move-result v1

    invoke-static {}, Lcom/miui/powercenter/a;->beT()I

    move-result v2

    invoke-static {}, Lcom/miui/powercenter/a;->beU()I

    move-result v3

    invoke-static {}, Lcom/miui/powercenter/a;->beV()I

    move-result v4

    invoke-static {}, Lcom/miui/powercenter/a;->beW()I

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-ne v6, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRW()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRX()I

    move-result v0

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private aSa()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a;->beL(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a;->beM(Z)V

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    invoke-static {v0}, Lcom/miui/powercenter/a;->beN(I)V

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    invoke-static {v0}, Lcom/miui/powercenter/a;->beO(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRW()I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a;->beP(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRX()I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a;->beQ(I)V

    return-void
.end method

.method private aSb()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030111

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aUO()Landroid/widget/Button;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aUP()Landroid/widget/Button;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aUO()Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aUP()Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x10

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private aSc()V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/bootshutdown/j;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/j;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07042f

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v2, 0x7f070422

    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const v2, 0x7f070421

    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method static synthetic aSd(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    return v0
.end method

.method static synthetic aSe(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGr:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic aSf(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    return v0
.end method

.method static synthetic aSg(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGw:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic aSh(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    return p1
.end method

.method static synthetic aSi(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    return p1
.end method

.method static synthetic aSj(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRT()Z

    move-result v0

    return v0
.end method

.method static synthetic aSk(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRR()V

    return-void
.end method

.method static synthetic aSl(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSa()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a;->beT()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGq:I

    invoke-static {}, Lcom/miui/powercenter/a;->beU()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aGv:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSb()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRV()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->init()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRY()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aRZ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->aSc()V

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
