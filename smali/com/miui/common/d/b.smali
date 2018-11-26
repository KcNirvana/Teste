.class public Lcom/miui/common/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static aBt:Lcom/miui/common/d/a;


# direct methods
.method static synthetic -get0()Lcom/miui/common/d/a;
    .locals 1

    sget-object v0, Lcom/miui/common/d/b;->aBt:Lcom/miui/common/d/a;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/common/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/miui/common/d/a;

    invoke-direct {v0}, Lcom/miui/common/d/a;-><init>()V

    sput-object v0, Lcom/miui/common/d/b;->aBt:Lcom/miui/common/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aKX(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/miui/antispam/db/a;->Zp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restore AntiSpam Data!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.miui.securitycenter"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.miui.securitycenter/databases"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.miui.securitycenter/shared_prefs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.miui.securitycenter/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-static {p0, v2}, Lcom/miui/common/d/b;->aKY(Landroid/content/Context;I)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/common/d/b;->aKY(Landroid/content/Context;I)V

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/miui/common/d/b;->aKY(Landroid/content/Context;I)V

    sget-object v0, Lcom/miui/common/d/b;->aBt:Lcom/miui/common/d/a;

    invoke-virtual {v0}, Lcom/miui/common/d/a;->aKW()V

    invoke-static {v2}, Lcom/miui/antispam/db/a;->Zq(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "create folder failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static aKY(Landroid/content/Context;I)V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    packed-switch p1, :pswitch_data_0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "folder does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "/data/data/com.miui.antispam/databases/AntiSpam"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/data/com.miui.securitycenter/databases"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "cp -r /data/data/com.miui.antispam/databases/AntiSpam /data/data/com.miui.securitycenter/databases/"

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "/data/data/com.miui.antispam/shared_prefs"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/data/com.miui.securitycenter/shared_prefs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "copy preferences"

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "/data/data/com.miui.antispam/files"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/data/com.miui.securitycenter/files"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "copy files"

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "source or target folder does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v0, Lcom/miui/common/d/b;->aBt:Lcom/miui/common/d/a;

    invoke-virtual {v0}, Lcom/miui/common/d/a;->aKV()V

    new-instance v0, Lcom/miui/common/d/c;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/d/c;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/common/d/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static aKZ(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "com.miui.antispam"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "remote_provider_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "dataMigration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->Zr(Z)V

    const-string/jumbo v1, "clouds_data_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/antispam/db/a;->Zo(J)V

    const-string/jumbo v1, "update_state"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->Zs(Ljava/lang/String;)V

    const-string/jumbo v1, "is_call_transfer_blocked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/miui/antispam/db/a;->Zc(IZ)V

    const-string/jumbo v1, "is_repeated_marked_number_permit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/miui/antispam/db/a;->Zd(IZ)V

    const-string/jumbo v1, "reported_number_settings_reset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->Zt(Z)V

    const-string/jumbo v1, "quiet_wristband_mac"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->Zu(Ljava/lang/String;)V

    const-string/jumbo v1, "backsound_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/miui/antispam/db/a;->Zm(II)V

    :cond_0
    const-string/jumbo v1, "unread_mms_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->Zv(I)V

    const-string/jumbo v1, "unread_phone_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/antispam/db/a;->Zw(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/common/d/b;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "create antispam context exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method static synthetic aLa(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/miui/common/d/b;->aKZ(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
