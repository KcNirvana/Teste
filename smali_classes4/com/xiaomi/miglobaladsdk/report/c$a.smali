.class Lcom/xiaomi/miglobaladsdk/report/c$a;
.super Lcom/xiaomi/analytics/AdAction;
.source "AdReportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/report/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaomi/miglobaladsdk/report/a;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/report/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c$a;->b:Lcom/xiaomi/miglobaladsdk/report/c;

    iget-object p1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/report/c$a;->a:Lcom/xiaomi/miglobaladsdk/report/a;

    return-void
.end method


# virtual methods
.method a(Lcom/xiaomi/miglobaladsdk/report/a;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mid"

    iget-object v2, p1, Lcom/xiaomi/miglobaladsdk/report/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "preload"

    iget-object v2, p1, Lcom/xiaomi/miglobaladsdk/report/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->E:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/miglobaladsdk/report/a;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->I:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "blackListAd"

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c$a;->addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/report/c$a;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c$a;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    return-void

    :cond_1
    :goto_0
    return-void
.end method
