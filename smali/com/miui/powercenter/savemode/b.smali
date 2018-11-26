.class public Lcom/miui/powercenter/savemode/b;
.super Lmiui/preference/PreferenceFragment;
.source ""


# instance fields
.field aOl:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private aOm:Landroid/preference/Preference$OnPreferenceClickListener;

.field private aOn:Landroid/preference/CheckBoxPreference;

.field private aOo:Lmiui/preference/ValuePreference;

.field private aOp:Landroid/preference/CheckBoxPreference;

.field private aOq:Lmiui/preference/ValuePreference;

.field private aOr:Landroid/preference/CheckBoxPreference;

.field aOs:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field aOt:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/powercenter/savemode/c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/c;-><init>(Lcom/miui/powercenter/savemode/b;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOm:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/miui/powercenter/savemode/e;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/e;-><init>(Lcom/miui/powercenter/savemode/b;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOs:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/miui/powercenter/savemode/f;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/f;-><init>(Lcom/miui/powercenter/savemode/b;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOl:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/miui/powercenter/savemode/g;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/g;-><init>(Lcom/miui/powercenter/savemode/b;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOt:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/miui/powercenter/savemode/h;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/h;-><init>(Lcom/miui/powercenter/savemode/b;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bec(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOo:Lmiui/preference/ValuePreference;

    invoke-static {p1}, Lcom/miui/powercenter/a/k;->bce(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private bed(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOq:Lmiui/preference/ValuePreference;

    invoke-static {p1}, Lcom/miui/powercenter/a/k;->bce(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private bee()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0704a8

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704a9

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/savemode/i;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/savemode/i;-><init>(Lcom/miui/powercenter/savemode/b;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/savemode/j;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/savemode/j;-><init>(Lcom/miui/powercenter/savemode/b;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method static synthetic bef(Lcom/miui/powercenter/savemode/b;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic beg(Lcom/miui/powercenter/savemode/b;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic beh(Lcom/miui/powercenter/savemode/b;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOq:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic bei(Lcom/miui/powercenter/savemode/b;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOr:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic bej(Lcom/miui/powercenter/savemode/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/b;->bec(I)V

    return-void
.end method

.method static synthetic bek(Lcom/miui/powercenter/savemode/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/b;->bed(I)V

    return-void
.end method

.method static synthetic bel(Lcom/miui/powercenter/savemode/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/savemode/b;->bee()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/savemode/b;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "enable_power_save_mode"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/savemode/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOr:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/b;->aOm:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "key_ontime_enabled"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/savemode/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOp:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/b;->aOm:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "key_ontime_open_time"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/savemode/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOq:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOq:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOq:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/b;->aOt:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/miui/powercenter/a;->bfk()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/savemode/b;->bed(I)V

    const-string/jumbo v0, "key_ontime_close_time"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/savemode/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOo:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOo:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOo:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/b;->aOt:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/miui/powercenter/a;->bfl()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/savemode/b;->bec(I)V

    const-string/jumbo v0, "auto_exit_power_save_mode"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/savemode/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOn:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOn:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/savemode/b;->aOm:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/savemode/b;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/savemode/b;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baL(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOp:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/powercenter/a;->bfj()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/b;->aOn:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/powercenter/a;->bfi()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
