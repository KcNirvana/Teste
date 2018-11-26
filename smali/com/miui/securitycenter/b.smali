.class public Lcom/miui/securitycenter/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aYb:I

.field private static aYc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/miui/securitycenter/b;->aYb:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/securitycenter/b;->aYc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bsx()I
    .locals 4

    sget v0, Lcom/miui/securitycenter/b;->aYb:I

    if-lez v0, :cond_0

    sget v0, Lcom/miui/securitycenter/b;->aYb:I

    return v0

    :cond_0
    sget-object v1, Lcom/miui/securitycenter/b;->aYc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/miui/securitycenter/b;->aYb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :try_start_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.miui.securitycore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/miui/securitycenter/b;->aYb:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    sget v0, Lcom/miui/securitycenter/b;->aYb:I

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "Version"

    const-string/jumbo v2, " CoreVersion error "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    sput v0, Lcom/miui/securitycenter/b;->aYb:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
