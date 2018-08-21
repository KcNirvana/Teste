.class public Lcom/alipay/android/app/f/c;
.super Ljava/lang/Object;
.source "TidStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/f/c$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static g:Lcom/alipay/android/app/f/c;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/f/c;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/f/c;->h:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/app/f/c;
    .locals 5

    const-class v1, Lcom/alipay/android/app/f/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/f/c;->g:Lcom/alipay/android/app/f/c;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "TidStorage.getInstance"

    const-string/jumbo v4, "mInstance == null"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/f/c;

    invoke-direct {v0}, Lcom/alipay/android/app/f/c;-><init>()V

    sput-object v0, Lcom/alipay/android/app/f/c;->g:Lcom/alipay/android/app/f/c;

    sget-object v0, Lcom/alipay/android/app/f/c;->g:Lcom/alipay/android/app/f/c;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/f/c;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/alipay/android/app/f/c;->g:Lcom/alipay/android/app/f/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/android/app/f/c;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/f/c;->h:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "TidStorage.initialize"

    const-string/jumbo v3, "context != null"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/f/c;->a:Landroid/content/Context;

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/f/c;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->m()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    if-nez p5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/f/c;->d:J

    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/f/c;->d:J

    goto :goto_1
.end method

.method static synthetic l()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/f/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method private m()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "alipay_tid_storage"

    const-string/jumbo v3, "tidinfo"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/f/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "tid"

    const-string/jumbo v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    const-string/jumbo v2, "client_key"

    const-string/jumbo v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :try_start_3
    const-string/jumbo v1, "vimei"

    const-string/jumbo v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :try_start_4
    const-string/jumbo v6, "vimsi"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    :goto_0
    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "TidStorage.load"

    const-string/jumbo v7, "TidStorage::load > %s,%s,%s,%s,%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    aput-object v3, v8, v10

    aput-object v2, v8, v11

    const/4 v9, 0x3

    aput-object v1, v8, v9

    const/4 v9, 0x4

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v5, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, v1, v0}, Lcom/alipay/android/app/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->n()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v3, v0

    move-object v4, v0

    move-object v2, v1

    move-object v1, v0

    :goto_2
    invoke-static {v5}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/app/f/c;->d:J

    iput-object v1, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v3, v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_2

    :cond_1
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/f/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/f/c;->d:J

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    const-string/jumbo v0, "alipay_tid_storage"

    const-string/jumbo v1, "tidinfo"

    invoke-static {v0, v1}, Lcom/alipay/android/app/f/c$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 5

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "TidStorage::sendTidChangedNotify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new_tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.app.CASHIER_TID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "new_tid"

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/alipay/android/app/f/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private q()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "tid"

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "client_key"

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcom/alipay/android/app/f/c;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "vimei"

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "vimsi"

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "alipay_tid_storage"

    const-string/jumbo v2, "tidinfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/f/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    const-string/jumbo v0, "alipay_tid_storage"

    const-string/jumbo v1, "tidflag"

    invoke-static {v0, v1}, Lcom/alipay/android/app/f/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",clientKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    const-string/jumbo v3, "TidStorage::save"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/f/c;->d:J

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->q()V

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->p()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "TidStorage.getTid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "TidStorage.getClientKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ClientKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "TidStorage.getVirtualImei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VirtualImei = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "TidStorage.getVirtualImsi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VirtualImsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public h()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "TidStorage::delete > %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->b:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/alipay/android/app/f/c;->c:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/alipay/android/app/f/c;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/android/app/f/c;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alipay/android/app/f/c;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Lcom/alipay/android/app/statistic/logfield/a;

    new-instance v2, Lcom/alipay/android/app/statistic/logfield/c;

    const-string/jumbo v3, "tid"

    const-string/jumbo v4, "TidReset"

    invoke-direct {v2, v3, v4, v0}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    const/16 v1, 0x8

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "TidStorage.delete"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->n()V

    return-void
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/f/c;->f()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/f/c;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 11

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "TidStorage.synchronizeLowerVersion"

    const-string/jumbo v2, "TidCompatible::synced"

    invoke-static {v8, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "alipay_tid_storage"

    const-string/jumbo v1, "tidflag"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/f/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/f/b;->d()Lcom/alipay/android/app/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/f/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/f/b;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v3, "TidStorage.synchronizeLowerVersion"

    const-string/jumbo v4, "TidCompatible::SyncTid01: %s,%s,%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v10

    aput-object v2, v6, v9

    aput-object v5, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v0, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/alipay/android/app/f/a;

    sget-object v3, Lcom/alipay/android/app/f/c;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/f/a;->a()[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    if-ne v0, v7, :cond_2

    aget-object v0, v3, v10

    check-cast v0, Ljava/lang/String;

    aget-object v1, v3, v9

    check-cast v1, Ljava/lang/String;

    aget-object v2, v3, v8

    check-cast v2, Ljava/lang/Long;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    :cond_2
    const-string/jumbo v0, "virtualImeiAndImsi"

    const-string/jumbo v3, "virtual_imei"

    invoke-static {v0, v3, v10}, Lcom/alipay/android/app/f/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "virtualImeiAndImsi"

    const-string/jumbo v4, "virtual_imsi"

    invoke-static {v0, v4, v10}, Lcom/alipay/android/app/f/c$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "TidCompatible::SyncTid02: %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v10

    aput-object v2, v6, v9

    aput-object v5, v6, v8

    aput-object v3, v6, v7

    const/4 v7, 0x4

    aput-object v4, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "phonecashiermsp"

    const-string/jumbo v7, "TidStorage.synchronizeLowerVersion"

    invoke-static {v8, v6, v7, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_3

    new-array v0, v9, [Lcom/alipay/android/app/statistic/logfield/a;

    new-instance v2, Lcom/alipay/android/app/statistic/logfield/c;

    const-string/jumbo v3, "tid"

    const-string/jumbo v4, "TidSyncInvalied"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v10

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/alipay/android/app/f/c;->o()Ljava/lang/String;

    move-result-object v3

    new-array v6, v9, [Lcom/alipay/android/app/statistic/logfield/a;

    new-instance v7, Lcom/alipay/android/app/statistic/logfield/e;

    const-string/jumbo v8, "de"

    const-string/jumbo v9, "tid_sync_921"

    invoke-direct {v7, v8, v9, v0}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v10

    invoke-static {v6}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    :cond_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method
