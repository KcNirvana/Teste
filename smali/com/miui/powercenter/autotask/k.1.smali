.class public Lcom/miui/powercenter/autotask/k;
.super Lcom/miui/powercenter/autotask/l;
.source ""


# instance fields
.field private aKB:Landroid/preference/PreferenceCategory;

.field private aKC:Landroid/preference/PreferenceCategory;

.field private aKD:Lmiui/preference/ValuePreference;

.field private aKE:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private aKF:Landroid/preference/Preference$OnPreferenceClickListener;

.field private aKG:Lcom/miui/powercenter/autotask/TextEditPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/l;-><init>()V

    new-instance v0, Lcom/miui/powercenter/autotask/D;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/D;-><init>(Lcom/miui/powercenter/autotask/k;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/miui/powercenter/autotask/E;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/E;-><init>(Lcom/miui/powercenter/autotask/k;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKE:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/l;-><init>(Lcom/miui/powercenter/autotask/AutoTask;)V

    new-instance v0, Lcom/miui/powercenter/autotask/D;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/D;-><init>(Lcom/miui/powercenter/autotask/k;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/miui/powercenter/autotask/E;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/E;-><init>(Lcom/miui/powercenter/autotask/k;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKE:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private aWd(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v1, p1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "battery_level_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "battery_level_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f020072

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setIcon(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    return-void

    :cond_1
    const-string/jumbo v0, "hour_minute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0202a0

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setIcon(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "hour_minute_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020336

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setIcon(I)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/miui/powercenter/autotask/w;->aYJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private aWe(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/powercenter/autotask/o;->aXt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/powercenter/autotask/o;->aXu(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setIcon(I)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private aWf(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f07041b

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setTitle(I)V

    invoke-virtual {v0, v3}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setShowRightArrow(Z)V

    const-string/jumbo v1, "key_repeat_type"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setKey(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/powercenter/bootshutdown/b;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/bootshutdown/b;->aSD(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTl(Lcom/miui/powercenter/bootshutdown/b;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKE:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "hour_minute"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0202a0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setIcon(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void

    :cond_1
    const-string/jumbo v1, "hour_minute_duration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020336

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private aWg()V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704ed

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const-string/jumbo v2, "key_restore_when_charged"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->aXZ()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private aWi()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "airplane_mode"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "airplane_mode"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private aWj()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/I;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/I;-><init>(Lcom/miui/powercenter/autotask/k;)V

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/autotask/o;->aXy(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/p;)V

    return-void
.end method

.method private aWk()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    iget-object v3, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/powercenter/autotask/k;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private aWl()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    iget-object v3, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/powercenter/autotask/k;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private aWm()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/H;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/H;-><init>(Lcom/miui/powercenter/autotask/k;)V

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/autotask/o;->aXx(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/p;)V

    return-void
.end method

.method private aWn(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/G;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/G;-><init>(Lcom/miui/powercenter/autotask/k;)V

    invoke-static {v0, v1, p1, v2}, Lcom/miui/powercenter/autotask/o;->aXw(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/p;)V

    return-void
.end method

.method private aWo()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/w;->aYI(Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/k;->aWd(Ljava/lang/String;)V

    const-string/jumbo v1, "hour_minute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "hour_minute_duration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/k;->aWf(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "battery_level_down"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "battery_level_up"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWg()V

    goto :goto_0
.end method

.method private aWp()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "internet"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private aWq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWp()V

    return-void
.end method

.method private aWr()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/k;->aWe(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "key_add_new_operations"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const v1, 0x7f0704c5

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(I)V

    const v1, 0x7f0704c6

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setSummary(I)V

    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setIcon(I)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method static synthetic aWs(Lcom/miui/powercenter/autotask/k;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKD:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic aWt(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWj()V

    return-void
.end method

.method static synthetic aWu(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWk()V

    return-void
.end method

.method static synthetic aWv(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWl()V

    return-void
.end method

.method static synthetic aWw(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWm()V

    return-void
.end method

.method static synthetic aWx(Lcom/miui/powercenter/autotask/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/k;->aWn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aWy(Lcom/miui/powercenter/autotask/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/k;->aWq(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public aWc()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdp()V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYh(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdo()V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYi(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdq()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/powercenter/b/a;->bde()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/miui/powercenter/b/a;->bdd()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/miui/powercenter/b/a;->bdf()V

    goto :goto_3
.end method

.method public aWh()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704c7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/b;->aUV(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v6

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704c5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/b;->aUV(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->aWz()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setResult(I)V

    return v7

    :cond_2
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdb()V

    :cond_3
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYh(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/miui/powercenter/b/a;->bda()V

    :cond_4
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKI:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYi(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdc()V

    :cond_5
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v7}, Lcom/miui/powercenter/autotask/AutoTask;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v6}, Lcom/miui/powercenter/autotask/AutoTask;->aYs(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYt()V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v1, v2}, Lcom/miui/powercenter/autotask/f;->aVQ(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return v7
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/l;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKG:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v1, v2}, Lcom/miui/powercenter/autotask/w;->aYH(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/TextEditPreference;->aUQ(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWo()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWr()V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKG:Lcom/miui/powercenter/autotask/TextEditPreference;

    new-instance v1, Lcom/miui/powercenter/autotask/F;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/F;-><init>(Lcom/miui/powercenter/autotask/k;)V

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/TextEditPreference;->aUR(Lcom/miui/powercenter/autotask/a;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/powercenter/autotask/l;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    const-string/jumbo v0, "bundle"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYl()V

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/powercenter/autotask/AutoTask;->aYm(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKG:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v1, v2}, Lcom/miui/powercenter/autotask/w;->aYH(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/TextEditPreference;->aUQ(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWo()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-string/jumbo v0, "bundle"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYn()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/k;->aWr()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/l;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/k;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "conditions_category"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKB:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "operations_category"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704fd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704c3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704fe

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704c4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKC:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/TextEditPreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKG:Lcom/miui/powercenter/autotask/TextEditPreference;

    const-string/jumbo v0, "add_new_condition"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/k;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKD:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKD:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->aKD:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/k;->aKF:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
