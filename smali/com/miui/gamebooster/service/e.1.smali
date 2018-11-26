.class Lcom/miui/gamebooster/service/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mx:Lcom/miui/gamebooster/service/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pJ(Lcom/miui/gamebooster/service/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJr(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pJ(Lcom/miui/gamebooster/service/d;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/constants/a;->qt:Ljava/lang/String;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/miui/common/network/b;->aLx(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pJ(Lcom/miui/gamebooster/service/d;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "speedValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "restrictTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "queryTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "backstageTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/miui/gamebooster/a/h;->fA(Landroid/content/Context;IIII)V

    const-string/jumbo v0, "game_booster_networkping_url"

    const-string/jumbo v2, "gbPingUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pR(Lcom/miui/gamebooster/service/d;)V

    const-string/jumbo v0, "GameBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v2}, Lcom/miui/gamebooster/service/d;->pH(Lcom/miui/gamebooster/service/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v2}, Lcom/miui/gamebooster/service/d;->pI(Lcom/miui/gamebooster/service/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/e;->mx:Lcom/miui/gamebooster/service/d;

    invoke-static {v2}, Lcom/miui/gamebooster/service/d;->pF(Lcom/miui/gamebooster/service/d;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadlimitparamsfromnet failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
