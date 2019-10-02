.class public Lcom/xiaomi/push/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/co;


# static fields
.field private static a:Lcom/xiaomi/push/cj;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/push/ci;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/ch;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public static declared-synchronized a()Lcom/xiaomi/push/cj;
    .locals 2

    const-class v0, Lcom/xiaomi/push/cj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/cj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/cg;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imei"

    iget-object v2, p0, Lcom/xiaomi/push/cj;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/push/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "actionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/cg;

    iget-object v3, v3, Lcom/xiaomi/push/cg;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/cg;

    iget-object v4, v4, Lcom/xiaomi/push/cg;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    const-string v3, "com.xiaomi.miui.ads.pushsdk"

    const-string v4, "content \u4e0d\u662fjson\u4e32"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v3, "adId"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/cg;

    iget-wide v4, v4, Lcom/xiaomi/push/cg;->a:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p2, "adList"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/xiaomi/push/ch;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/cj;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/push/ch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/cj;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/cj;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/cj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/cm;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/ck;

    iget-object v1, p0, Lcom/xiaomi/push/cj;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/cj;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/xiaomi/push/ck;-><init>(Lcom/xiaomi/push/co;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ch;)V

    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/push/ch;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ck;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/cg;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/cj;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/push/ch;

    invoke-direct {v0, p3, p1, p2}, Lcom/xiaomi/push/ch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/cj;->a(Lcom/xiaomi/push/ch;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/ch;

    invoke-direct {v0, p3, p1, p2}, Lcom/xiaomi/push/ch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/cj;->a(Lcom/xiaomi/push/ch;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Lcom/xiaomi/push/ch;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/cj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/cl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/cj;->b(Lcom/xiaomi/push/ch;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/xiaomi/push/ch;)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/push/cj;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/cj;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/cj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/cm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ch;)V

    iget-object p1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-virtual {p1}, Lcom/xiaomi/push/ci;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/cg;)V
    .locals 4

    iget-wide v0, p1, Lcom/xiaomi/push/cg;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "click"

    iget p1, p1, Lcom/xiaomi/push/cg;->a:I

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/push/cj;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/Integer;Lcom/xiaomi/push/ch;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/cj;->a:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/push/ch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xiaomi/push/cj;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/push/cj;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "faild: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/push/cj;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/xiaomi/push/ch;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/push/cj;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/cm;->a(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/xiaomi/push/cj;->b(Lcom/xiaomi/push/ch;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/xiaomi/push/cj;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/push/cj;->a:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "success: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/push/cj;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/cm;->a(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/xiaomi/push/cj;->a:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/xiaomi/push/ch;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b(Lcom/xiaomi/push/cg;)V
    .locals 4

    iget-wide v0, p1, Lcom/xiaomi/push/cg;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "remove"

    iget p1, p1, Lcom/xiaomi/push/cg;->a:I

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/push/cj;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/xiaomi/push/cg;)V
    .locals 4

    iget-wide v0, p1, Lcom/xiaomi/push/cg;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "received"

    iget p1, p1, Lcom/xiaomi/push/cg;->a:I

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/push/cj;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method
