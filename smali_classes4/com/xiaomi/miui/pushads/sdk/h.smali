.class public Lcom/xiaomi/miui/pushads/sdk/h;
.super Lcom/xiaomi/push/ce;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/ce;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/h;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ce;-><init>(Lcom/xiaomi/push/ce;)V

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/push/ce;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actionUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imgUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "titText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "priText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "secText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "actionText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/push/ce;->a(Lorg/json/JSONObject;)V

    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->a:Ljava/lang/String;

    const-string v0, "imgUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->b:Ljava/lang/String;

    const-string v0, "titText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->c:Ljava/lang/String;

    const-string v0, "priText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    const-string v0, "secText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/h;->f:Ljava/lang/String;

    const-string v0, "actionText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "showType"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastShowTime"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "actionUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imgUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "receiveUpperBound"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "downloadedPath"

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "titText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "actionText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
