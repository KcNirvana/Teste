.class final Lcom/xiaomi/analytics/internal/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic boi:Lcom/xiaomi/analytics/internal/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    sget-object v7, Lcom/xiaomi/analytics/internal/c;->bnP:Lcom/xiaomi/analytics/internal/m;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/f;->bLH(Lcom/xiaomi/analytics/internal/f;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/analytics/internal/o;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v6, v2, 0x1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/k;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/k;->K()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/f;->bLH(Lcom/xiaomi/analytics/internal/f;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/k;->bLn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/k;->M()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/f;->bLH(Lcom/xiaomi/analytics/internal/f;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/n;->d(Landroid/content/Context;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/f;->bLK(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/f;->bLH(Lcom/xiaomi/analytics/internal/f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/k;->N()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/k;->O()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "av"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "cv"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "d"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "f"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLe()Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "i"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v17, "m"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "n"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "nonce"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "p"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "r"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "ts"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "v"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "miui_sdkconfig_jafej!@#)(*e@!#"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/l;->bLp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLe()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "https://sdkconfig.ad.intl.xiaomi.com/api/checkupdate/lastusefulversion2?"

    :goto_1
    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "av="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&cv="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&d="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&f="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLe()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "&i="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "&m="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&n="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&nonce="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&p="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&r="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&ts="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&v="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&sign="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UpdateManager"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget v3, Lcom/xiaomi/analytics/internal/c;->bnO:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/f;->bKO(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v2, "UpdateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "result "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "code"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "v"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    const-string/jumbo v12, "force"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/xiaomi/analytics/internal/f;->bLB(Lcom/xiaomi/analytics/internal/f;I)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    new-instance v9, Lcom/xiaomi/analytics/internal/m;

    invoke-direct {v9, v10}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/i;->bLd()Z

    move-result v10

    if-nez v10, :cond_2

    iget v9, v9, Lcom/xiaomi/analytics/internal/m;->bok:I

    if-nez v9, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    const-string/jumbo v10, "md5"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/xiaomi/analytics/internal/f;->bLN(Lcom/xiaomi/analytics/internal/f;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/f;->bLJ(Lcom/xiaomi/analytics/internal/f;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/f;->bLL(Lcom/xiaomi/analytics/internal/f;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/c;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v2, "https://sdkconfig.ad.xiaomi.com/api/checkupdate/lastusefulversion2?"

    goto/16 :goto_1

    :cond_5
    const/4 v3, -0x8

    if-ne v9, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    const-string/jumbo v9, "failMsg"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/analytics/internal/f;->bLC(Lcom/xiaomi/analytics/internal/f;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    move v2, v6

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/analytics/internal/k;->boi:Lcom/xiaomi/analytics/internal/f;

    const-wide/16 v10, 0x0

    invoke-static {v3, v10, v11}, Lcom/xiaomi/analytics/internal/f;->bLO(Lcom/xiaomi/analytics/internal/f;J)V

    const-string/jumbo v3, "UpdateManager"

    const-string/jumbo v9, "exception "

    invoke-static {v3, v9, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v2, v4

    goto :goto_2
.end method
