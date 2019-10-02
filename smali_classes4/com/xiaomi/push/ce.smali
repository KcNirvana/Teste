.class public Lcom/xiaomi/push/ce;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:J

.field private a:Ljava/lang/String;

.field public b:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/ce;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/xiaomi/push/ce;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/ce;->a:J

    iget v0, p1, Lcom/xiaomi/push/ce;->a:I

    iput v0, p0, Lcom/xiaomi/push/ce;->a:I

    iget-object v0, p1, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ce;->h:Ljava/lang/String;

    iget v0, p1, Lcom/xiaomi/push/ce;->b:I

    iput v0, p0, Lcom/xiaomi/push/ce;->b:I

    iget v0, p1, Lcom/xiaomi/push/ce;->c:I

    iput v0, p0, Lcom/xiaomi/push/ce;->c:I

    iget-wide v0, p1, Lcom/xiaomi/push/ce;->b:J

    iput-wide v0, p0, Lcom/xiaomi/push/ce;->b:J

    iget v0, p1, Lcom/xiaomi/push/ce;->d:I

    iput v0, p0, Lcom/xiaomi/push/ce;->d:I

    iget-object v0, p1, Lcom/xiaomi/push/ce;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/ce;->a:Ljava/lang/String;

    iget p1, p1, Lcom/xiaomi/push/ce;->e:I

    iput p1, p0, Lcom/xiaomi/push/ce;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p0, Lcom/xiaomi/push/ce;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "showType"

    iget v2, p0, Lcom/xiaomi/push/ce;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "nonsense"

    iget v2, p0, Lcom/xiaomi/push/ce;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "receiveUpperBound"

    iget v2, p0, Lcom/xiaomi/push/ce;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lastShowTime"

    iget-wide v2, p0, Lcom/xiaomi/push/ce;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "multi"

    iget v2, p0, Lcom/xiaomi/push/ce;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ce;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ce;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ce;->a:J

    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ce;->a:I

    const-string v0, "nonsense"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ce;->b:I

    const-string v0, "receiveUpperBound"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/ce;->c:I

    const-string v0, "lastShowTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ce;->b:J

    const-string v0, "multi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/push/ce;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
