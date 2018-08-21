.class public Lcom/alipay/android/app/ui/quickpay/util/e;
.super Ljava/lang/Object;
.source "MiniReadSmsBean.java"


# instance fields
.field private a:Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;J)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "smsread"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object p1

    :cond_0
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->f:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->g:J

    const-string/jumbo v0, "smsread"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "template"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->b:Ljava/lang/String;

    const-string/jumbo v0, "rules"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    if-lez v0, :cond_1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->c:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "tempGroup"

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->d:I

    const-string/jumbo v0, "readTime"

    const/16 v1, 0xb4

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->e:I

    :cond_4
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/f;-><init>(Lcom/alipay/android/app/ui/quickpay/util/e;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->a:Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/e;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->d:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/util/e;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->e:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->g:J

    return-wide v0
.end method

.method public b()Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/e;->a:Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;

    return-object v0
.end method
