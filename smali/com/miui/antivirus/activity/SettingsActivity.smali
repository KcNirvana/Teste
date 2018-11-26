.class public Lcom/miui/antivirus/activity/SettingsActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private asd:Landroid/preference/PreferenceCategory;

.field private ase:Lcom/miui/antivirus/g;

.field private asf:Landroid/preference/CheckBoxPreference;

.field private asg:Landroid/preference/PreferenceCategory;

.field private ash:Lmiui/preference/ValuePreference;

.field private asi:Landroid/preference/CheckBoxPreference;

.field private asj:Lcom/miui/antivirus/k;

.field private ask:Lcom/miui/guardprovider/a;

.field private asl:Landroid/preference/CheckBoxPreference;

.field private asm:Lmiui/preference/ValuePreference;

.field private asn:Landroid/preference/PreferenceCategory;

.field private aso:Landroid/preference/CheckBoxPreference;

.field private asp:Landroid/preference/CheckBoxPreference;

.field private asq:Landroid/preference/CheckBoxPreference;

.field private asr:Lmiui/preference/ValuePreference;

.field private ass:Landroid/preference/CheckBoxPreference;

.field private ast:Lmiui/app/ProgressDialog;

.field private asu:Lmiui/preference/ValuePreference;

.field private asv:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    return-void
.end method

.method private ayC(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ask:Lcom/miui/guardprovider/a;

    new-instance v1, Lcom/miui/antivirus/activity/L;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/antivirus/activity/L;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/guardprovider/a;->aql(Lcom/miui/guardprovider/b;)V

    return-void
.end method

.method private ayD()Ljava/util/List;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ase:Lcom/miui/antivirus/g;

    invoke-virtual {v0}, Lcom/miui/antivirus/g;->aDe()Landroid/database/Cursor;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_3

    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Lcom/miui/antivirus/h;

    invoke-direct {v5}, Lcom/miui/antivirus/h;-><init>()V

    const-string/jumbo v0, "Name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    const-string/jumbo v0, "DescriptionName"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/antivirus/h;->description:Ljava/lang/String;

    const-string/jumbo v0, "NameString"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/antivirus/h;->awv:Ljava/lang/String;

    const-string/jumbo v0, "Enable"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, v5, Lcom/miui/antivirus/h;->awu:Z

    const-string/jumbo v0, "SupportCloud"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, v5, Lcom/miui/antivirus/h;->aww:Z

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "SettingsActivity"

    const-string/jumbo v2, "exception when get engine list :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    return-object v6

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :cond_3
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private ayE(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const v0, 0x7f070650

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f070651

    invoke-virtual {p0, v1, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ayG(Ljava/util/List;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/h;

    iget-boolean v2, v0, Lcom/miui/antivirus/h;->awu:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ash:Lmiui/preference/ValuePreference;

    iget-object v3, v0, Lcom/miui/antivirus/h;->awv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/antivirus/i;->aDO(Ljava/lang/String;)V

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    aput-object v3, v2, v8

    const v3, 0x7f0705c1

    invoke-virtual {p0, v3, v2}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asf:Landroid/preference/CheckBoxPreference;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/miui/antivirus/h;->awv:Ljava/lang/String;

    aput-object v5, v4, v8

    const v5, 0x7f070732

    invoke-virtual {p0, v5, v4}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asf:Landroid/preference/CheckBoxPreference;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const v5, 0x7f0705c2

    invoke-virtual {p0, v5, v4}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/antivirus/activity/SettingsActivity;->ayE(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asf:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Lcom/miui/antivirus/i;->aDv(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asf:Landroid/preference/CheckBoxPreference;

    new-instance v4, Lcom/miui/antivirus/activity/J;

    invoke-direct {v4, p0, v2}, Lcom/miui/antivirus/activity/J;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v0, v0, Lcom/miui/antivirus/h;->aww:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asd:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asd:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-static {v0, v1}, Lcom/miui/antivirus/utils/n;->avd(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asd:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asm:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asd:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asm:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private ayH()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayD()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, -0x1

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/h;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/miui/antivirus/h;->awv:Ljava/lang/String;

    aput-object v7, v6, v2

    const v7, 0x7f070716

    invoke-virtual {p0, v7, v6}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-boolean v0, v0, Lcom/miui/antivirus/h;->awu:Z

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070715

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/K;

    invoke-direct {v1, p0, v4}, Lcom/miui/antivirus/activity/K;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;)V

    invoke-virtual {v0, v5, v3, v1}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v8}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private ayI()V
    .locals 5

    const v4, 0x7f070727

    const v3, 0x7f070725

    const v1, 0x7f070720

    const/high16 v2, 0x1040000

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/securityscan/utils/a;->Ij(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/N;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/N;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;)V

    invoke-virtual {v0, v4, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_0
.end method

.method private ayK(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ast:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ast:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ast:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ast:Lmiui/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ayL()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f070729

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ast:Lmiui/app/ProgressDialog;

    new-instance v0, Lcom/miui/antivirus/activity/O;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/O;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/O;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private ayM()V
    .locals 2

    invoke-static {p0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07072d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayI()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/common/b/t;->aJs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayJ()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayL()V

    goto :goto_0
.end method

.method static synthetic ayN(Lcom/miui/antivirus/activity/SettingsActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asf:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic ayO(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/antivirus/k;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asj:Lcom/miui/antivirus/k;

    return-object v0
.end method

.method static synthetic ayP(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/guardprovider/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ask:Lcom/miui/guardprovider/a;

    return-object v0
.end method

.method static synthetic ayQ(Lcom/miui/antivirus/activity/SettingsActivity;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity;->ayE(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ayR(Lcom/miui/antivirus/activity/SettingsActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayD()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ayS(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity;->ayC(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic ayT(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity;->ayG(Ljava/util/List;)V

    return-void
.end method

.method static synthetic ayU(Lcom/miui/antivirus/activity/SettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity;->ayK(I)V

    return-void
.end method

.method static synthetic ayV(Lcom/miui/antivirus/activity/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayL()V

    return-void
.end method


# virtual methods
.method public ayF(Landroid/content/Loader;Landroid/util/Pair;)V
    .locals 9

    const v8, 0x7f0c0027

    const v7, 0x7f070571

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asu:Lmiui/preference/ValuePreference;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asr:Lmiui/preference/ValuePreference;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/miui/antivirus/i;->aDU(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v5, v1

    invoke-virtual {v4, v8, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v6, v5, v1

    invoke-virtual {v4, v8, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public ayJ()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070720

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070721

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/M;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/M;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;)V

    const v2, 0x7f070726

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/c;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/a;->Il(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/miui/common/b/t;->aJs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayJ()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayL()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_settings_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ase:Lcom/miui/antivirus/g;

    invoke-static {p0}, Lcom/miui/antivirus/k;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/k;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asj:Lcom/miui/antivirus/k;

    invoke-static {p0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ask:Lcom/miui/guardprovider/a;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ask:Lcom/miui/guardprovider/a;

    invoke-virtual {v0, v3}, Lcom/miui/guardprovider/a;->aqi(Lcom/miui/guardprovider/b;)V

    const v0, 0x7f0705b8

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asd:Landroid/preference/PreferenceCategory;

    const v0, 0x7f0705c0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ash:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ash:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ash:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const v0, 0x7f0705c3

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asi:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asi:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/antivirus/i;->aDq()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705ba

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asl:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asl:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiVirus;->isInstallMonitorEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705b9

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asf:Landroid/preference/CheckBoxPreference;

    const v0, 0x7f0705bf

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asm:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asm:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asm:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const v0, 0x7f0705c9

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asn:Landroid/preference/PreferenceCategory;

    const v0, 0x7f0705ca

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->aso:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->aso:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->aso:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705cb

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asq:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asq:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/antivirus/i;->aDw()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705cc

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asg:Landroid/preference/PreferenceCategory;

    const v0, 0x7f0705cd

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asv:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asv:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/antivirus/i;->aDn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705ce

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asp:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asp:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/antivirus/i;->aDo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705cf

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ass:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ass:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/antivirus/i;->aDp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ass:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f0705b7

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asu:Lmiui/preference/ValuePreference;

    const v0, 0x7f0705d0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asr:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asu:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asr:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    new-instance v0, Lcom/miui/antivirus/activity/H;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/H;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/activity/H;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asg:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asu:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asn:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asg:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asg:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asr:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asg:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/antivirus/activity/I;

    invoke-direct {v0, p0, p0}, Lcom/miui/antivirus/activity/I;-><init>(Lcom/miui/antivirus/activity/SettingsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/c;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ask:Lcom/miui/guardprovider/a;

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity;->ayF(Landroid/content/Loader;Landroid/util/Pair;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asi:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDB(Z)V

    return v3

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asl:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$AntiVirus;->setInstallMonitorEnabled(Landroid/content/Context;Z)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->aso:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_2

    const-string/jumbo v0, "action_register_foreground_notification"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/antivirus/activity/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v3

    :cond_2
    const-string/jumbo v0, "action_unregister_foreground_notification"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asq:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDx(Z)V

    return v3

    :cond_4
    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asv:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_5

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDy(Z)V

    return v3

    :cond_5
    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asp:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_6

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDz(Z)V

    return v3

    :cond_6
    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ass:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_7

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDA(Z)V

    return v3

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->ash:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayH()V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asu:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity;->asm:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayM()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SettingsActivity"

    const-string/jumbo v2, "exception when update engine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/c;->onResume()V

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method
