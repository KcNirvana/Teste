.class public Lcom/xiaomi/mistatistic/sdk/b/n;
.super Lcom/xiaomi/mistatistic/sdk/b/a;
.source "SourceFile"


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->b:J

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->c:J

    iput-object p5, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "mistat_session"

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "start"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "end"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "env"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/b/c;
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/b/c;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/n;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->b:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->b:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/n;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->f:Ljava/lang/String;

    return-object v0
.end method
