.class public Lcom/miui/antispam/ui/activity/n;
.super Lcom/miui/antispam/ui/b/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private TB:Landroid/preference/CheckBoxPreference;

.field private TC:Lcom/miui/antispam/ui/view/LabelPreference;

.field private TD:Landroid/preference/CheckBoxPreference;

.field private TE:Lcom/miui/antispam/ui/view/LabelPreference;

.field private TF:Landroid/preference/CheckBoxPreference;

.field private TG:Lcom/miui/antispam/ui/view/LabelPreference;

.field private TH:Landroid/preference/PreferenceCategory;

.field private TI:Landroid/preference/CheckBoxPreference;

.field private TJ:Landroid/preference/CheckBoxPreference;

.field private TK:Lcom/miui/antispam/ui/view/LabelPreference;

.field private TL:I

.field private TM:Landroid/app/Dialog;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/a;-><init>()V

    return-void
.end method

.method private US()V
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v0, v1}, Lcom/miui/antispam/db/a;->YQ(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v1, v2}, Lcom/miui/antispam/db/a;->YR(Landroid/content/Context;I)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v2, v3}, Lcom/miui/antispam/db/a;->YS(Landroid/content/Context;I)Z

    move-result v2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v3, v4}, Lcom/miui/antispam/db/a;->YT(Landroid/content/Context;I)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TI:Landroid/preference/CheckBoxPreference;

    iget v5, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v5}, Lcom/miui/antispam/db/a;->YU(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private UT()V
    .locals 7

    const v6, 0x7f070127

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v2, v3}, Lcom/miui/antispam/db/a;->YX(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/miui/antispam/ui/activity/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v2, v3}, Lcom/miui/antispam/db/a;->YY(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/miui/antispam/ui/activity/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v2, v3}, Lcom/miui/antispam/db/a;->YZ(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/miui/antispam/ui/activity/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-static {v2, v3}, Lcom/miui/antispam/db/a;->Za(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/miui/antispam/ui/activity/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic UU(Lcom/miui/antispam/ui/activity/n;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic UV(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic UW(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic UX(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic UY(Lcom/miui/antispam/ui/activity/n;)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    return-object v0
.end method

.method static synthetic UZ(Lcom/miui/antispam/ui/activity/n;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    return v0
.end method

.method static synthetic Va(Lcom/miui/antispam/ui/activity/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/n;->UT()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_sim_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    const-string/jumbo v0, "key_mark_number_group"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "key_mark_fraud"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TD:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_mark_agent"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TB:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_mark_sell"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TJ:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_mark_harass"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TF:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_repeated_marked_number"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TI:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_mark_time_fraud"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_mark_time_agent"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_mark_time_sell"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_mark_time_harass"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/n;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/n;->UT()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TI:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antispam/db/a;->Zd(IZ)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TM:Landroid/app/Dialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/af;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/af;-><init>(Lcom/miui/antispam/ui/activity/n;)V

    const v2, 0x7f07011b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TM:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TD:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/db/a;->Ze(Landroid/content/Context;IZ)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setMarkNumBlockSet(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TE:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TB:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/db/a;->Zf(Landroid/content/Context;IZ)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TC:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TJ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/db/a;->Zg(Landroid/content/Context;IZ)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TF:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/ui/activity/n;->TL:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/db/a;->Zh(Landroid/content/Context;IZ)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->TH:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/n;->TG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f050012

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/n;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070128

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/antispam/ui/activity/ag;

    invoke-direct {v2, p0, v1, p1}, Lcom/miui/antispam/ui/activity/ag;-><init>(Lcom/miui/antispam/ui/activity/n;Landroid/widget/EditText;Landroid/preference/Preference;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/antispam/ui/b/a;->onResume()V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/n;->US()V

    return-void
.end method
