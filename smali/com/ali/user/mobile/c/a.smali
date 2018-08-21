.class public Lcom/ali/user/mobile/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UserInfoDBHelper.java"


# static fields
.field private static a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "aliuser"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/c/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/c/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/c/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/c/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/c/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserInfo_dbHelper"

    const-string/jumbo v2, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const-string/jumbo v0, "UserInfo_dbHelper"

    const-string/jumbo v1, "onUpgrade, oldVersion:%s, newVersion:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
