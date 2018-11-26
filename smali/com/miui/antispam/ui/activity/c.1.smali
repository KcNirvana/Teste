.class public Lcom/miui/antispam/ui/activity/c;
.super Lcom/miui/antispam/ui/b/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Sa:Landroid/preference/PreferenceCategory;

.field private Sb:Landroid/preference/CheckBoxPreference;

.field private Sc:Landroid/preference/CheckBoxPreference;

.field private Sd:Landroid/preference/CheckBoxPreference;

.field private Se:Lcom/miui/antispam/ui/view/LabelPreference;

.field private Sf:Landroid/preference/CheckBoxPreference;

.field private Sg:Landroid/preference/CheckBoxPreference;

.field private Sh:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -wrap0()Lcom/miui/antispam/ui/activity/c;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/ui/activity/c;->To()Lcom/miui/antispam/ui/activity/c;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/a;-><init>()V

    return-void
.end method

.method private Tm(Ljava/lang/String;IIZ)Lcom/miui/antispam/ui/view/LabelPreference;
    .locals 9

    const v6, 0x7f0700a1

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/miui/antispam/ui/view/LabelPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz p1, :cond_6

    if-nez v0, :cond_0

    xor-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_6

    :cond_0
    invoke-virtual {v8, v5}, Lcom/miui/antispam/ui/view/LabelPreference;->Wv(Z)V

    new-instance v1, Lcom/miui/antispam/ui/activity/D;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/miui/antispam/ui/activity/D;-><init>(Lcom/miui/antispam/ui/activity/c;Ljava/lang/String;ZI)V

    invoke-virtual {v8, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/antispam/util/h;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/util/h;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-virtual {v8, v6}, Lcom/miui/antispam/ui/view/LabelPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, p1}, Lcom/miui/antispam/ui/view/LabelPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sim_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "backsound_mode"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v8, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v0, v2}, Lcom/miui/antispam/db/a;->Zm(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_1
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return-object v8

    :cond_2
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "sim_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "backsound_mode"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "name"

    if-eqz p4, :cond_5

    :goto_3
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_5
    :try_start_4
    const-string/jumbo v6, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_5
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Lcom/miui/antispam/ui/view/LabelPreference;->setEnabled(Z)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_4
.end method

.method private Tn()Ljava/util/List;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/miui/antispam/ui/activity/c;->Tm(Ljava/lang/String;IIZ)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/antispam/ui/activity/c;->Tm(Ljava/lang/String;IIZ)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, v4, v4}, Lcom/miui/antispam/ui/activity/c;->Tm(Ljava/lang/String;IIZ)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v4, v2, v4}, Lcom/miui/antispam/ui/activity/c;->Tm(Ljava/lang/String;IIZ)Lcom/miui/antispam/ui/view/LabelPreference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static To()Lcom/miui/antispam/ui/activity/c;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/c;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/c;-><init>()V

    return-object v0
.end method

.method private Tp(Landroid/preference/Preference;)V
    .locals 3

    const v0, 0x7f07015a

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    const v0, 0x7f07015b

    :cond_0
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700d5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/B;

    invoke-direct {v1, p0, p1}, Lcom/miui/antispam/ui/activity/B;-><init>(Lcom/miui/antispam/ui/activity/c;Landroid/preference/Preference;)V

    const v2, 0x7f070159

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/C;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/C;-><init>(Lcom/miui/antispam/ui/activity/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    const v0, 0x7f07015c

    goto :goto_0
.end method

.method private Tq()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "stranger_call_mode"

    iget v4, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v0, v3, v4, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "contact_call_mode"

    iget v5, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v3, v4, v5, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "oversea_call_mode"

    iget v6, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v4, v5, v6, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "empty_call_mode"

    iget v7, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v5, v6, v7, v1}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v5

    iget-object v6, p0, Lcom/miui/antispam/ui/activity/c;->Sf:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sg:Landroid/preference/CheckBoxPreference;

    if-nez v5, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sc:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v1}, Lcom/miui/antispam/db/a;->YV(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method static synthetic Tr(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sa:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic Ts(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic Tt(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic Tu(Lcom/miui/antispam/ui/activity/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Tv(Lcom/miui/antispam/ui/activity/c;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    return v0
.end method

.method static synthetic Tw(Lcom/miui/antispam/ui/activity/c;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/c;->Tn()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Tx(Lcom/miui/antispam/ui/activity/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/c;->Tq()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_sim_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    const-string/jumbo v1, "is_from_intercept_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "oversea_function_guide"

    const-string/jumbo v1, "oversea_intercept"

    const-string/jumbo v2, "click"

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/a/a;->Yu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "key_call_stranger"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sf:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_call_forwarding"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sc:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_call_oversea"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_call_reported"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Se:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_call_contacts"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_call_unknown"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sg:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "backsound_group"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sa:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Se:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Sg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "call_stranger_group"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->Se:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v0, "call_stranger_group"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->Sa:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/c;->Tq()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sf:Landroid/preference/CheckBoxPreference;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/c;->Tp(Landroid/preference/Preference;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sc:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_6

    iget v2, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v2, v0}, Lcom/miui/antispam/db/a;->Zc(IZ)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "stranger_call_mode"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sb:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_5

    const-string/jumbo v0, "contact_call_mode"

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-static {v2, v0, v3, v1}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sd:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_4

    const-string/jumbo v0, "oversea_call_mode"

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->Sg:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "empty_call_mode"

    iget v4, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    invoke-static {v2, v3, v4, v0}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/c;->Se:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/c;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/activity/c;->Sh:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/c;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antispam/ui/b/a;->onResume()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/antispam/ui/activity/A;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/A;-><init>(Lcom/miui/antispam/ui/activity/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/ui/activity/A;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
