.class public Lcom/miui/personalassistant/favorite/request/JSONRequest;
.super Lcom/miui/personalassistant/favorite/request/Request;
.source "JSONRequest.java"


# static fields
.field private static final DAY_TIME_IN_MILIIS:J = 0x5265c00L

.field private static final PREF_CLIENT_ERROR:Ljava/lang/String; = "pref_personalassistant_client_error"

.field private static final PREF_LAST_REQUEST_TIME:Ljava/lang/String; = "pref_last_request_personalassistant_time_%s"

.field private static final SLEEP_TIME_SEGMENT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "JSONRequest"

.field private static sExpiredTime:J


# instance fields
.field private mData:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEtag:Ljava/lang/String;

.field private mPref:Landroid/content/SharedPreferences;

.field private mStatus:I

.field private mVer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/request/Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mStatus:I

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getRequestStatus()I
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mRequestUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->prohibitRequest(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "prohibitRequest, request after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-wide v20, Lcom/miui/personalassistant/favorite/request/JSONRequest;->sExpiredTime:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x3

    :goto_0
    return v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mRequestUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->setClientError(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "JSONRequest"

    const-string/jumbo v18, "The network is not connected"

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getConn()Ljava/net/HttpURLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mRequestMethod:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "POST"

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getParams()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v9, v10

    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getStatus:The response code is:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v13, v0, :cond_17

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v11

    move-object v4, v5

    :goto_2
    const/16 v16, 0x2

    :try_start_4
    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " SocketTimeoutException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getStatus:The status code is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_7
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "description"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mDescription:Ljava/lang/String;

    const-string/jumbo v17, "code"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string/jumbo v17, "code"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v17, "ver"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mVer:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mDecryptDownloadData:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-static {v8}, Lcom/miui/personalassistant/favorite/request/Request;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mData:Ljava/lang/String;

    :goto_5
    const/16 v16, 0x0

    const-string/jumbo v17, "ETag"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mEtag:Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_6
    move-object v4, v5

    :goto_7
    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_8
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mData:Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :catch_2
    move-exception v11

    move-object v4, v5

    :goto_9
    const/16 v16, 0x2

    :try_start_b
    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " JSONException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_a

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_a
    :goto_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v9, :cond_5

    :try_start_d
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    const/16 v17, 0x3eb

    move/from16 v0, v17

    if-eq v6, v0, :cond_d

    const/16 v17, 0x3ed

    move/from16 v0, v17

    if-eq v6, v0, :cond_d

    const/16 v17, 0x3ec

    move/from16 v0, v17

    if-ne v6, v0, :cond_14

    :cond_d
    :try_start_e
    const-string/jumbo v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    const-class v18, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    monitor-enter v18
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "expire"

    const-wide/32 v20, 0x5265c00

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v20

    sput-wide v20, Lcom/miui/personalassistant/favorite/request/JSONRequest;->sExpiredTime:J

    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mRequestUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->setClientError(Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/16 v16, 0x3

    goto/16 :goto_6

    :catchall_0
    move-exception v17

    :try_start_11
    monitor-exit v18
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    throw v17
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catch_4
    move-exception v11

    move-object v4, v5

    :goto_c
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1a

    const/16 v16, 0x1

    :goto_d
    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v4, :cond_e

    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    :cond_e
    :goto_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    if-eqz v9, :cond_5

    :try_start_15
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_10
    :try_start_16
    const-class v18, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    monitor-enter v18
    :try_end_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    const-wide/32 v20, 0x5265c00

    :try_start_17
    sput-wide v20, Lcom/miui/personalassistant/favorite/request/JSONRequest;->sExpiredTime:J

    monitor-exit v18

    goto :goto_b

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    throw v17
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :catchall_2
    move-exception v17

    move-object v4, v5

    :goto_f
    if-eqz v4, :cond_11

    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    :cond_11
    :goto_10
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v9, :cond_13

    :try_start_1a
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    :cond_13
    :goto_11
    throw v17

    :cond_14
    const/16 v17, 0x7cf

    move/from16 v0, v17

    if-ne v6, v0, :cond_15

    const/16 v16, 0x4

    goto/16 :goto_6

    :cond_15
    const/16 v16, 0x3

    goto/16 :goto_6

    :cond_16
    const/16 v16, 0x4

    goto/16 :goto_6

    :cond_17
    const/16 v17, 0x130

    move/from16 v0, v17

    if-ne v13, v0, :cond_18

    const/16 v16, 0x7

    goto/16 :goto_7

    :cond_18
    :try_start_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->isServerError(I)Z
    :try_end_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    move-result v17

    if-eqz v17, :cond_19

    const/16 v16, 0x4

    goto/16 :goto_7

    :cond_19
    const/16 v16, 0x5

    goto/16 :goto_7

    :catch_6
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_7
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_8
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_9
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_1a
    const/16 v16, 0x2

    goto/16 :goto_d

    :catch_a
    move-exception v11

    const-string/jumbo v17, "JSONRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " IOException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :catch_b
    move-exception v11

    const-string/jumbo v18, "JSONRequest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " IOException:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :catch_c
    move-exception v11

    const-string/jumbo v18, "JSONRequest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " IOException:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catchall_3
    move-exception v17

    goto/16 :goto_f

    :catchall_4
    move-exception v17

    move-object v9, v10

    goto/16 :goto_f

    :catch_d
    move-exception v11

    goto/16 :goto_c

    :catch_e
    move-exception v11

    move-object v9, v10

    goto/16 :goto_c

    :catch_f
    move-exception v11

    goto/16 :goto_9

    :catch_10
    move-exception v11

    move-object v9, v10

    goto/16 :goto_9

    :catch_11
    move-exception v11

    goto/16 :goto_2

    :catch_12
    move-exception v11

    move-object v9, v10

    goto/16 :goto_2
.end method

.method private getUrlRequestTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "pref_last_request_personalassistant_time_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/miui/personalassistant/util/Coder;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prohibitRequest(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_personalassistant_client_error"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getUrlRequestTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lcom/miui/personalassistant/favorite/request/JSONRequest;->sExpiredTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setClientError(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_personalassistant_client_error"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_0

    const-string/jumbo v0, "JSONRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientError for url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getUrlRequestTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 4

    iget v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getRequestStatus()I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mStatus:I

    iget v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "GET"

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "JSONRequest"

    const-string/jumbo v2, "server error, sleep 5000ms and retry"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getRequestStatus()I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mStatus:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mStatus:I

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "JSONRequest"

    const-string/jumbo v2, "server error, sleep failed: InterruptedException"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mVer:Ljava/lang/String;

    return-object v0
.end method

.method public requestData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/JSONRequest;->mData:Ljava/lang/String;

    return-object v0
.end method
