.class public Lcom/miui/powercenter/autotask/y;
.super Lcom/miui/powercenter/autotask/l;
.source ""


# instance fields
.field private aLA:Lmiui/preference/ValuePreference;

.field private aLB:Lmiui/preference/ValuePreference;

.field private aLC:Lmiui/preference/ValuePreference;

.field private aLD:Lmiui/preference/ValuePreference;

.field private aLE:Lmiui/preference/ValuePreference;

.field private aLF:Lmiui/preference/ValuePreference;

.field private aLG:Lmiui/preference/ValuePreference;

.field private aLH:Lmiui/preference/ValuePreference;

.field private aLI:Lmiui/preference/ValuePreference;

.field private aLJ:Lmiui/preference/ValuePreference;

.field private aLK:Landroid/preference/PreferenceScreen;

.field private aLy:Landroid/preference/Preference$OnPreferenceClickListener;

.field private aLz:Lmiui/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/l;-><init>()V

    new-instance v0, Lcom/miui/powercenter/autotask/ac;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/ac;-><init>(Lcom/miui/powercenter/autotask/y;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/l;-><init>(Lcom/miui/powercenter/autotask/AutoTask;)V

    new-instance v0, Lcom/miui/powercenter/autotask/ac;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/ac;-><init>(Lcom/miui/powercenter/autotask/y;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private aYS()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "airplane_mode"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

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

.method private aYT()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/af;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/af;-><init>(Lcom/miui/powercenter/autotask/y;)V

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/autotask/o;->aXy(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/p;)V

    return-void
.end method

.method private aYU()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/ae;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/ae;-><init>(Lcom/miui/powercenter/autotask/y;)V

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/autotask/o;->aXx(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/p;)V

    return-void
.end method

.method private aYV(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/ad;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/ad;-><init>(Lcom/miui/powercenter/autotask/y;)V

    invoke-static {v0, v1, p1, v2}, Lcom/miui/powercenter/autotask/o;->aXw(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/p;)V

    return-void
.end method

.method private aYW()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/y;->aYS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private aYX(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLK:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/y;->aYW()V

    return-void
.end method

.method static synthetic aYY(Lcom/miui/powercenter/autotask/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/y;->aYT()V

    return-void
.end method

.method static synthetic aYZ(Lcom/miui/powercenter/autotask/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/y;->aYU()V

    return-void
.end method

.method static synthetic aZa(Lcom/miui/powercenter/autotask/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/y;->aYV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aZb(Lcom/miui/powercenter/autotask/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/y;->aYX(Ljava/lang/String;)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "auto_clean_memory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLE:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "internet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLJ:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "mute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLG:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "vibration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLI:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "bluetooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLB:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "auto_brightness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLA:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "brightness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLC:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "airplane_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLz:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLD:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "synchronization"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/autotask/y;->aLH:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v0}, Lcom/miui/powercenter/autotask/o;->aXv(Lmiui/preference/ValuePreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/y;->aYW()V

    return-void
.end method


# virtual methods
.method public aYR()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->aWz()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    return v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "task"

    iget-object v4, p0, Lcom/miui/powercenter/autotask/y;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "bundle"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/l;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/y;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/y;->updateViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/l;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "screen"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLK:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "memory_clean"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLE:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLE:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLE:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "auto_clean_memory"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "mobile_data"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLF:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "internet"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLJ:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLJ:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLJ:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "mute"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLG:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLG:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLG:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "mute"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "vibration"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLI:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLI:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLI:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "vibration"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLB:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLB:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLB:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "auto_brightness"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLA:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLA:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLA:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "auto_brightness"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLC:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLC:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLC:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "brightness"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "aireplane_mode"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLz:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLz:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLz:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "airplane_mode"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "gps"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLD:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLD:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLD:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "sync"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/y;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLH:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLH:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/y;->aLy:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/y;->aLH:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "synchronization"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    return-void
.end method
