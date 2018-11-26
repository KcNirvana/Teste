.class public Lcom/miui/gamebooster/a/F;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static eY:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/miui/gamebooster/a/F;->eY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ih(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/miui/gamebooster/a/F;->il(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ii(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/F;->in(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/F;->im(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.taskmanager.Clear"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.miui.vpnsdkmanager"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.miui.screenrecorder"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "clean_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "protected_pkgnames"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static ij(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/gamebooster/a/s;->gt(Landroid/content/Context;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/a/y;->hN(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/gamebooster/a/s;->gv(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/gamebooster/a/s;->gw(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/gamebooster/a/s;->gu(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tx()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/gamebooster/c/b;->ug()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/miui/gamebooster/a/p;->gd(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lcom/miui/gamebooster/a/a;->eU(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/miui/gamebooster/a/a;->eT(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "gb_added_games"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->us(Z)V

    :cond_2
    return-void
.end method

.method public static ik()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static il(Landroid/content/Context;)J
    .locals 4

    const-string/jumbo v0, "game_booster_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "game_booster_power_val"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static im(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/miui/gamebooster/provider/b;->ev(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "package_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private static in(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/miui/gamebooster/provider/b;->ev(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "package_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
