.class public Lcom/xiaomi/b/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/b/a/a/f;->a:I

    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/b/a/a/f;->b:I

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Z
    .locals 3

    const/4 v0, 0x1

    const-class v1, Lcom/xiaomi/b/a/a/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/b/a/a/f;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Z
    .locals 3

    const-class v1, Lcom/xiaomi/b/a/a/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/b/a/a/f;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/xiaomi/b/a/a/f;

    monitor-enter v2

    :try_start_0
    sget v3, Lcom/xiaomi/b/a/a/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "ro.miui.ui.version.code"

    invoke-static {v3}, Lcom/xiaomi/b/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.miui.ui.version.name"

    invoke-static {v3}, Lcom/xiaomi/b/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    if-eqz v1, :cond_3

    :goto_0
    sput v0, Lcom/xiaomi/b/a/a/f;->a:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMIUI\'s value is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaomi/b/a/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->b(Ljava/lang/String;)V

    :cond_2
    sget v0, Lcom/xiaomi/b/a/a/f;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "get isMIUI failed"

    invoke-static {v1, v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/b/a/a/f;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/xiaomi/b/a/a/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/b/a/a/j;->c()I

    move-result v0

    invoke-static {}, Lcom/xiaomi/b/a/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const-string v0, "alpha"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    :try_start_1
    const-string v0, "development"

    goto :goto_0

    :cond_1
    const-string v0, "stable"

    goto :goto_0

    :cond_2
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/xiaomi/b/a/a/f;->b:I

    if-gez v0, :cond_0

    const-string v0, "miui.external.SdkHelper"

    const-string v3, "isMiuiSystem"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput v2, Lcom/xiaomi/b/a/a/f;->b:I

    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sput v1, Lcom/xiaomi/b/a/a/f;->b:I

    :cond_0
    sget v0, Lcom/xiaomi/b/a/a/f;->b:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
