.class public Lcom/miui/a/b/b/a;
.super Lcom/miui/a/b/b/b;
.source ""


# static fields
.field private static aYB:Lcom/miui/a/b/b/a;


# instance fields
.field private aYA:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/a/b/b/a;->aYB:Lcom/miui/a/b/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/a/b/b/b;-><init>()V

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/a/b/b/a;->aYA:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/a;
    .locals 2

    const-class v1, Lcom/miui/a/b/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/a/b/b/a;->aYB:Lcom/miui/a/b/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/a/b/b/a;

    invoke-direct {v0, p0}, Lcom/miui/a/b/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/a/b/b/a;->aYB:Lcom/miui/a/b/b/a;

    :cond_0
    sget-object v0, Lcom/miui/a/b/b/a;->aYB:Lcom/miui/a/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bts()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/a/b/b/a;->aYA:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "getDataEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/miui/a/c/a;->btB(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4
.end method

.method public btt(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/a/b/b/a;->aYA:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "setDataEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btB(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
