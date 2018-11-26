.class public Lcom/miui/appmanager/AMAppInfomationActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private aUg:Landroid/preference/PreferenceCategory;

.field private aUh:Ljava/lang/String;

.field private aUi:Lmiui/preference/ValuePreference;

.field private aUj:Lmiui/preference/ValuePreference;

.field private aUk:[Ljava/lang/String;

.field private aUl:[Ljava/lang/String;

.field private aUm:Lcom/miui/appmanager/l;

.field private aUn:Lmiui/preference/ValuePreference;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPkgName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    return-void
.end method

.method private bmA()J
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :try_start_0
    const-string/jumbo v2, "2012/01/01 00:00:00"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMAppInfomationActivity"

    const-string/jumbo v3, "getDefaultTime error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private bmB(Lorg/json/JSONObject;)Lcom/miui/appmanager/l;
    .locals 7

    new-instance v1, Lcom/miui/appmanager/l;

    invoke-direct {v1}, Lcom/miui/appmanager/l;-><init>()V

    invoke-static {p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v2

    if-eqz p1, :cond_4

    const-string/jumbo v0, "installer_pkg_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "update_pkg_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/l;->aUo:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/l;->aUq:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmA()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v4, v1, Lcom/miui/appmanager/l;->aUp:J

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v2, v1, Lcom/miui/appmanager/l;->aUr:J

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AMAppInfomationActivity"

    const-string/jumbo v6, "Exception getLabel"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v3, v1, Lcom/miui/appmanager/l;->aUo:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMAppInfomationActivity"

    const-string/jumbo v3, "Exception getLabel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, v1, Lcom/miui/appmanager/l;->aUq:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/appmanager/q;->bmU(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/l;->aUq:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "AMAppInfomationActivity"

    const-string/jumbo v4, "Exception getLabel"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v3, v1, Lcom/miui/appmanager/l;->aUq:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic bmD(Lcom/miui/appmanager/AMAppInfomationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bmE(Lcom/miui/appmanager/AMAppInfomationActivity;Lorg/json/JSONObject;)Lcom/miui/appmanager/l;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmB(Lorg/json/JSONObject;)Lcom/miui/appmanager/l;

    move-result-object v0

    return-object v0
.end method

.method private bmy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmiui/preference/ValuePreference;

    invoke-direct {v0, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUg:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private bmz()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUl:[Ljava/lang/String;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    const-string/jumbo v2, "install_source"

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-object v2, v2, Lcom/miui/appmanager/l;->aUo:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUl:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-object v4, v4, Lcom/miui/appmanager/l;->aUo:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "install_time"

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-wide v2, v2, Lcom/miui/appmanager/l;->aUp:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUl:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-wide v4, v4, Lcom/miui/appmanager/l;->aUp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "update_source"

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-object v2, v2, Lcom/miui/appmanager/l;->aUq:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUl:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-object v4, v4, Lcom/miui/appmanager/l;->aUq:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "update_time"

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-wide v2, v2, Lcom/miui/appmanager/l;->aUr:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUk:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUl:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    iget-wide v4, v4, Lcom/miui/appmanager/l;->aUr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public bmC(Landroid/content/Loader;Lcom/miui/appmanager/l;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmz()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x82

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppInfomationActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "am_app_pkgname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPkgName:Ljava/lang/String;

    const-string/jumbo v1, "am_app_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUh:Ljava/lang/String;

    const-string/jumbo v1, "am_app_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mUid:I

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPkgName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/a/d/a/a;->bub(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/appmanager/l;

    invoke-direct {v0}, Lcom/miui/appmanager/l;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUm:Lcom/miui/appmanager/l;

    const-string/jumbo v0, "category_app_infomation"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppInfomationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUg:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "am_info_pkgname"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppInfomationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUj:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUj:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUj:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "am_info_label"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppInfomationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUi:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUi:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo v0, "am_info_version"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppInfomationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUn:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->aUn:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppInfomationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/ad;

    invoke-direct {v0, p0, p0}, Lcom/miui/appmanager/ad;-><init>(Lcom/miui/appmanager/AMAppInfomationActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/appmanager/l;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmC(Landroid/content/Loader;Lcom/miui/appmanager/l;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "am_info_pkgname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppInfomationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string/jumbo v1, "pkgName"

    iget-object v2, p0, Lcom/miui/appmanager/AMAppInfomationActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f0708a9

    invoke-static {p0, v0}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
