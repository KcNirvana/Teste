.class public Lcom/xiaomi/mistatistic/sdk/b/o;
.super Lcom/xiaomi/mistatistic/sdk/b/a;
.source "SourceFile"


# instance fields
.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>()V

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->c:J

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "mistat_session_extra"

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

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "autoEnd"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/b/c;
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/c;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/b/c;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/o;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->a:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->b:J

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/o;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/c;->f:Ljava/lang/String;

    return-object v0
.end method
