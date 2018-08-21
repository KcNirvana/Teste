.class Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;
.super Ljava/lang/Object;
.source "RestBineryRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

.field final synthetic val$req:Lcom/autonavi/its/protocol/BaseRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    iput-object p2, p0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->getParams()Ljava/util/Map;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/autonavi/its/common/restapi/APIUtil;->getPostBody(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/autonavi/its/protocol/BaseRequest;->getHeader()Ljava/util/Map;

    move-result-object v16

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->addStatisticsParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v24, Ljava/net/URL;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "https"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    const-string/jumbo v26, "TLS"

    invoke-static/range {v26 .. v26}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    check-cast v25, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$100(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-virtual/range {v25 .. v27}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_2
    if-eqz v13, :cond_0

    :try_start_1
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_3
    if-eqz v19, :cond_1

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_4
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_2
    :goto_5
    return-void

    :cond_3
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    check-cast v25, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_4
    const-string/jumbo v26, "POST"

    invoke-virtual/range {v25 .. v26}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->val$req:Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/autonavi/its/protocol/BaseRequest;->doSpecDeal()V

    invoke-static/range {v17 .. v17}, Lcom/autonavi/its/common/restapi/APIUtil;->getParamString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "UTF-8"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v0, v6

    move/from16 v26, v0

    if-lez v26, :cond_5

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_8

    move-object v13, v14

    :cond_5
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v26

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$200(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, -0x1

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :catch_1
    move-exception v26

    goto :goto_5

    :cond_6
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->isReqBineryData()Z

    move-result v26

    if-eqz v26, :cond_8

    const/4 v11, 0x0

    const/16 v26, 0x400

    move/from16 v0, v26

    new-array v3, v0, [B

    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v11, v0, :cond_7

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    :catch_2
    move-exception v7

    move-object/from16 v19, v20

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/autonavi/its/protocol/BaseRequest;->setResponseData([B)Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->dealBusinessData(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_9

    move-object/from16 v19, v20

    :goto_7
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/autonavi/its/protocol/BaseRequest;->isBusinessSuccess()Z

    move-result v26

    if-eqz v26, :cond_a

    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v12, Landroid/os/Message;->what:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$200(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Landroid/os/Handler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :catch_3
    move-exception v26

    goto/16 :goto_5

    :cond_8
    new-instance v10, Ljava/io/InputStreamReader;

    const-string/jumbo v26, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    new-instance v15, Ljava/io/BufferedReader;

    invoke-direct {v15, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    :goto_9
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_9

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :catch_4
    move-exception v7

    move-object v9, v10

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest$3;->this$0:Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;->access$000(Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;)Lcom/autonavi/its/protocol/BaseRequest;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->getResponseContent()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/autonavi/its/protocol/BaseRequest;->dealBusinessData(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_a

    move-object v9, v10

    goto/16 :goto_7

    :cond_a
    const/16 v26, -0x1

    :try_start_a
    move/from16 v0, v26

    iput v0, v12, Landroid/os/Message;->what:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_8

    :catch_5
    move-exception v26

    goto/16 :goto_3

    :catch_6
    move-exception v26

    goto/16 :goto_4

    :catch_7
    move-exception v26

    goto/16 :goto_5

    :catch_8
    move-exception v26

    move-object v13, v14

    goto/16 :goto_5

    :catch_9
    move-exception v26

    move-object/from16 v19, v20

    goto/16 :goto_5

    :catch_a
    move-exception v26

    move-object v9, v10

    goto/16 :goto_5

    :catch_b
    move-exception v26

    move-object v13, v14

    goto/16 :goto_5

    :catch_c
    move-exception v26

    move-object/from16 v19, v20

    goto/16 :goto_5

    :catch_d
    move-exception v26

    move-object v9, v10

    goto/16 :goto_5

    :catch_e
    move-exception v7

    move-object v13, v14

    goto/16 :goto_2
.end method
