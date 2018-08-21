.class public Lcom/miui/payment/captor/config/TextPattern$Factory;
.super Ljava/lang/Object;
.source "TextPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/config/TextPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;)Lcom/miui/payment/captor/config/TextPattern;
    .locals 6

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/payment/utils/FileUtil;->readFileFromReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/miui/payment/captor/config/TextPattern$Factory;->fromJsonSync(Lorg/json/JSONObject;)Lcom/miui/payment/captor/config/TextPattern;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "not UTF-8 charset for input"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "can\'t load json"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;)Lcom/miui/payment/captor/config/TextPattern;
    .locals 13

    const/4 v12, -0x1

    const-string/jumbo v10, "regex"

    const-string/jumbo v11, ""

    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "amountNumberGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v10, "amountUnitGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v10, "amountCurrencyGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v10, "dateGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v10, "methodNameGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v10, "methodAccountGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v10, "categoryDescGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v10, "commentGroup"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v3, Lcom/miui/payment/captor/config/TextPattern$Builder;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/miui/payment/captor/config/TextPattern$Builder;-><init>(Lcom/miui/payment/captor/config/TextPattern$1;)V

    invoke-virtual {v3, v9}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setRegex(Ljava/lang/String;)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setAmountNumberGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setAmountUnitGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setAmountCurrencyGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setDateGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setMethodNameGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setMethodAccountGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setCategoryDescGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/miui/payment/captor/config/TextPattern$Builder;->setCommentGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;

    invoke-virtual {v3}, Lcom/miui/payment/captor/config/TextPattern$Builder;->build()Lcom/miui/payment/captor/config/TextPattern;

    move-result-object v10

    return-object v10
.end method
