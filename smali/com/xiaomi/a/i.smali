.class Lcom/xiaomi/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/a/i$a;

.field private b:J

.field private c:Lorg/json/JSONObject;

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/a/i$a;->a:Lcom/xiaomi/a/i$a;

    iput-object v0, p0, Lcom/xiaomi/a/i;->a:Lcom/xiaomi/a/i$a;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/i;->c:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/i;->d:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/a/i;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/a/i$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/a/i$a;->a:Lcom/xiaomi/a/i$a;

    iput-object v0, p0, Lcom/xiaomi/a/i;->a:Lcom/xiaomi/a/i$a;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/i;->c:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/i;->d:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/a/i;->b:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/a/i;->a:Lcom/xiaomi/a/i$a;

    :cond_0
    return-void
.end method

.method public static a()Lcom/xiaomi/a/i;
    .locals 1

    new-instance v0, Lcom/xiaomi/a/i;

    invoke-direct {v0}, Lcom/xiaomi/a/i;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/a/i$a;)Lcom/xiaomi/a/i;
    .locals 1

    new-instance v0, Lcom/xiaomi/a/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/i;-><init>(Lcom/xiaomi/a/i$a;)V

    return-object v0
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)Lcom/xiaomi/a/i;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/a/i;->d:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "v"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "appId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionId"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "configKey"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content"

    iget-object v2, p0, Lcom/xiaomi/a/i;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "eventTime"

    iget-wide v2, p0, Lcom/xiaomi/a/i;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "logType"

    iget-object v2, p0, Lcom/xiaomi/a/i;->a:Lcom/xiaomi/a/i$a;

    invoke-virtual {v2}, Lcom/xiaomi/a/i$a;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "extra"

    iget-object v2, p0, Lcom/xiaomi/a/i;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "LogEvent"

    invoke-static {v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pack e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method b(Lorg/json/JSONObject;)Lcom/xiaomi/a/i;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/a/i;->c:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method
