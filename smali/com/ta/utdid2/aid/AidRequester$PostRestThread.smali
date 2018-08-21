.class Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
.super Ljava/lang/Thread;
.source "AidRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/aid/AidRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostRestThread"
.end annotation


# static fields
.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field mAppName:Ljava/lang/String;

.field mCallback:Lcom/ut/device/AidCallback;

.field mOldAid:Ljava/lang/String;

.field mPost:Lorg/apache/http/client/methods/HttpPost;

.field mRspLine:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/ta/utdid2/aid/AidRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 1

    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iput-object p4, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    iput-object p5, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    iput-object p6, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AidRequester.java"

    const-class v2, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "601"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.client.HttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final synthetic execute_aroundBody0(Lcom/ta/utdid2/aid/AidRequester$PostRestThread;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;)Lorg/apache/http/HttpResponse;
    .locals 1

    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic execute_aroundBody1$advice(Lcom/ta/utdid2/aid/AidRequester$PostRestThread;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 21

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    const/16 v16, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p3}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->execute_aroundBody0(Lcom/ta/utdid2/aid/AidRequester$PostRestThread;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v10

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v16

    :catch_0
    move-exception v20

    new-instance v1, Ljava/io/IOException;

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getResponseLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 15

    const/16 v14, 0x3ea

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v13, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    sget-object v1, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, v4

    invoke-static/range {v1 .. v7}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->execute_aroundBody1$advice(Lcom/ta/utdid2/aid/AidRequester$PostRestThread;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v11, 0x0

    if-eqz v13, :cond_3

    :try_start_1
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    :goto_1
    const-string/jumbo v10, ""

    if-eqz v11, :cond_8

    :goto_2
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    if-nez v10, :cond_5

    :goto_3
    if-eqz v11, :cond_1

    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "close the bufferreader"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-static {v1}, Lcom/ta/utdid2/aid/AidRequester;->access$1(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-static {v1}, Lcom/ta/utdid2/aid/AidRequester;->access$1(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    return-void

    :catch_0
    move-exception v9

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v1, v14, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "response is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v9

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v1, v14, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_6
    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object v10, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v9

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v1, v14, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    :try_start_7
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "BufferredReader is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    :catch_3
    move-exception v9

    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1

    :cond_9
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/ta/utdid2/aid/AidRequester;->access$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    const/16 v3, 0x3e9

    invoke-interface {v1, v3, v8}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-static {v1}, Lcom/ta/utdid2/aid/AidRequester;->access$3(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    invoke-static {v1, v3, v8, v4}, Lcom/ta/utdid2/aid/AidStorageController;->setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
