.class public Lcom/miui/antispam/ui/activity/i;
.super Lcom/miui/antispam/ui/b/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final SC:Landroid/net/Uri;

.field private static final SD:Landroid/net/Uri;


# instance fields
.field private SE:Lmiui/app/Activity;

.field private SF:Lcom/miui/antispam/ui/view/LabelPreference;

.field private SG:Lmiui/preference/RadioButtonPreferenceCategory;

.field private SH:Ljava/lang/String;

.field private SI:I

.field private handler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/antispam/ui/activity/i;->SC:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/antispam/ui/activity/i;->SD:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "tel:*74"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/i;->SD:Landroid/net/Uri;

    const-string/jumbo v0, "tel:*740"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/i;->SC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/a;-><init>()V

    new-instance v0, Lcom/miui/antispam/ui/activity/K;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/ui/activity/K;-><init>(Lcom/miui/antispam/ui/activity/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/i;->handler:Landroid/os/Handler;

    return-void
.end method

.method private TQ(Lmiui/preference/RadioButtonPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SG:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/i;->TS()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method

.method private TS()I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sim_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/i;->SH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "backsound_mode"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public static TT()Lcom/miui/antispam/ui/activity/i;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/i;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/i;-><init>()V

    return-object v0
.end method

.method private TU(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "backsound_mode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/i;->SH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private TV(ILjava/lang/String;ILmiui/preference/RadioButtonPreference;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f0700cf

    invoke-virtual {p0, v2, v1}, Lcom/miui/antispam/ui/activity/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/L;

    invoke-direct {v1, p0, p1, p4}, Lcom/miui/antispam/ui/activity/L;-><init>(Lcom/miui/antispam/ui/activity/i;ILmiui/preference/RadioButtonPreference;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/M;

    invoke-direct {v1, p0, p4}, Lcom/miui/antispam/ui/activity/M;-><init>(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic TW(Lcom/miui/antispam/ui/activity/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    return-object v0
.end method

.method static synthetic TY(Lcom/miui/antispam/ui/activity/i;)Lmiui/preference/RadioButtonPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SG:Lmiui/preference/RadioButtonPreferenceCategory;

    return-object v0
.end method

.method static synthetic TZ(Lcom/miui/antispam/ui/activity/i;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/i;->SI:I

    return v0
.end method

.method static synthetic Ua(Lcom/miui/antispam/ui/activity/i;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/i;->TS()I

    move-result v0

    return v0
.end method

.method static synthetic Ub(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/i;->TQ(Lmiui/preference/RadioButtonPreference;)V

    return-void
.end method

.method static synthetic Uc(Lcom/miui/antispam/ui/activity/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/i;->TU(I)V

    return-void
.end method

.method static synthetic Ud(Lcom/miui/antispam/ui/activity/i;ILjava/lang/String;ILmiui/preference/RadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/ui/activity/i;->TV(ILjava/lang/String;ILmiui/preference/RadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method public TR()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/antispam/ui/activity/N;

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/ui/activity/N;-><init>(Lcom/miui/antispam/ui/activity/i;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/i;->TS()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    new-instance v4, Lmiui/preference/RadioButtonPreference;

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-direct {v4, v5}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/i;->SG:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v4}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    if-ne v0, v3, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/i;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sim_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SH:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sim_slot"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/i;->SI:I

    const-string/jumbo v0, "key_open_call_wait"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SF:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SF:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "key_st_antispam_backsound_mode_defined"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreferenceCategory;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SG:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/i;->TR()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SF:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/i;->SH:Ljava/lang/String;

    const-string/jumbo v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/i;->SE:Lmiui/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/miui/antispam/ui/activity/O;

    invoke-direct {v2, p0}, Lcom/miui/antispam/ui/activity/O;-><init>(Lcom/miui/antispam/ui/activity/i;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/miui/antispam/ui/activity/i;->SI:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/miui/antispam/ui/activity/i;->SI:I

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.settings.GsmUmtsCallWaitingSetting"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/i;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
