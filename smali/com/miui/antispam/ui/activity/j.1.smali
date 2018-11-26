.class public Lcom/miui/antispam/ui/activity/j;
.super Lcom/miui/antispam/ui/b/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private SJ:Lcom/miui/antispam/ui/view/LabelPreference;

.field private SK:Lcom/miui/antispam/ui/view/LabelPreference;

.field private SL:Landroid/preference/CheckBoxPreference;

.field private SM:Lcom/miui/antispam/ui/view/LabelPreference;

.field private SN:Lcom/miui/antispam/ui/view/LabelPreference;

.field private SO:I

.field private SP:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mItems:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Lcom/miui/antispam/ui/activity/j;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/ui/activity/j;->Ue()Lcom/miui/antispam/ui/activity/j;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/a;-><init>()V

    return-void
.end method

.method private static Ue()Lcom/miui/antispam/ui/activity/j;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/j;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/j;-><init>()V

    return-object v0
.end method

.method private Uf(Landroid/preference/Preference;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "stranger_sms_mode"

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v1, :cond_1

    const v1, 0x7f0700f1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/j;->mItems:[Ljava/lang/String;

    new-instance v4, Lcom/miui/antispam/ui/activity/Q;

    invoke-direct {v4, p0, v0, p1}, Lcom/miui/antispam/ui/activity/Q;-><init>(Lcom/miui/antispam/ui/activity/j;Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const-string/jumbo v0, "service_sms_mode"

    goto :goto_0

    :cond_1
    const v1, 0x7f0700f4

    goto :goto_1
.end method

.method static synthetic Ug(Lcom/miui/antispam/ui/activity/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Uh(Lcom/miui/antispam/ui/activity/j;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Ui(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SJ:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic Uj(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SK:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic Uk(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SM:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic Ul(Lcom/miui/antispam/ui/activity/j;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic Um(Lcom/miui/antispam/ui/activity/j;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_sim_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "msg_stranger_group"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SP:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "key_msg_stranger"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_msg_notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SM:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_msg_contacts"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SL:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_msg_keyword_black"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SJ:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_msg_keyword_white"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SK:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SM:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SJ:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "stranger_sms_mode"

    iget v5, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    invoke-static {v0, v3, v5, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "service_sms_mode"

    iget v6, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    invoke-static {v0, v5, v6, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "contact_sms_mode"

    iget v7, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    invoke-static {v0, v6, v7, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/miui/antispam/ui/activity/j;->SL:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    new-array v0, v8, [Ljava/lang/String;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v2, v4, v9

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mItems:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SP:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/j;->SM:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    if-le v3, v1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/j;->mItems:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aget-object v6, v4, v2

    aput-object v6, v0, v2

    aget-object v2, v4, v1

    aput-object v2, v0, v1

    aget-object v1, v4, v9

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/j;->mItems:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SM:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/j;->mItems:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/j;->SL:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "contact_sms_mode"

    iget v4, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v2, v3, v4, v0}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SN:Lcom/miui/antispam/ui/view/LabelPreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SM:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/j;->Uf(Landroid/preference/Preference;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SJ:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "is_black"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/j;->SK:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/j;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/activity/j;->SO:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "is_black"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antispam/ui/b/a;->onResume()V

    new-instance v0, Lcom/miui/antispam/ui/activity/P;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/P;-><init>(Lcom/miui/antispam/ui/activity/j;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/ui/activity/P;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
