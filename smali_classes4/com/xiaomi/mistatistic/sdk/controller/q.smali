.class public Lcom/xiaomi/mistatistic/sdk/controller/q;
.super Ljava/lang/Object;
.source "RemoteDataUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/q$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput v1, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput p1, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "RDUM"

    const-string v0, "new job to upload ALL events"

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "RDUM"

    const-string v0, "new job to upload BASIC events"

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(J)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "next_upload_ts"

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a(J)V

    const-string v2, "RDUM"

    const-string v3, "update next upload time to %d according to server delay %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(JJLjava/lang/String;Z)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/Boolean;)V

    sget v5, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(JJI)V

    const-string p1, "d"

    invoke-static {p1, p5}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RDUM"

    const-string p3, "doDeleting exception: "

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "RDUM"

    const-string p3, "deleting done and uploading job is finished, set Uploading %b"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    sget-object p5, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, p2

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;JJLjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(JJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;JJIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Ljava/lang/String;JJIZ)V

    return-void
.end method

.method private a(Ljava/lang/String;JJIZ)V
    .locals 13

    new-instance v6, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    sget v1, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/q$2;

    move-object v7, v3

    move-object v8, p0

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/mistatistic/sdk/controller/q$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;JJ)V

    move-object v0, v6

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;-><init>(ILjava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->execute()V

    return-void
.end method

.method private b(Z)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

    sget v2, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->e()J

    move-result-wide v3

    new-instance v6, Lcom/xiaomi/mistatistic/sdk/controller/q$1;

    invoke-direct {v6, p0}, Lcom/xiaomi/mistatistic/sdk/controller/q$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;)V

    move-object v1, v7

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;-><init>(IJZLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V

    invoke-virtual {v0, v7}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf731400

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->e(J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f(J)V

    const-string v0, "ed"

    invoke-static {v0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RDUM"

    const-string v2, "deleteExpiredEvents exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static e()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "next_upload_ts"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isDataUploadingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "RDUM"

    const-string v0, "Upload is disabled by customer."

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object v0

    sget v1, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "RDUM"

    const-string v0, "upload is NOT allowed by the remote server."

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "RDUM"

    const-string v0, "Start the uploading job ..."

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    invoke-direct {p0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Z)V

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/u;->a()Lcom/xiaomi/mistatistic/sdk/controller/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/u;->d()V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "RDUM"

    const-string v0, "sUploading = %s, trigger uploading job with delay %d"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/q$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/q$a;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;)V

    invoke-virtual {p1, v0, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RDUM"

    const-string v1, "triggerUploadingJob exception"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method
