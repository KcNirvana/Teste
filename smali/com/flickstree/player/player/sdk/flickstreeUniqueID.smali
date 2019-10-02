.class public Lcom/flickstree/player/player/sdk/flickstreeUniqueID;
.super Landroid/webkit/WebView;
.source "flickstreeUniqueID.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "flickstreeUniqueID"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private deviceIdMan:Ljava/lang/String;

.field private listVideoDetailsList:Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

.field private manufacturer:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;
    .locals 0

    iget-object p0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->listVideoDetailsList:Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    return-object p0
.end method

.method static synthetic access$002(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->listVideoDetailsList:Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    return-object p1
.end method

.method private callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->model:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/flickstree/player/player/sdk/ApiClient;->buildService(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;

    move-result-object v3

    const-string v4, "1.49"

    const-string v5, "JSON"

    const-string v6, "ADD_USER"

    iget-object v7, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->serial:Ljava/lang/String;

    iget-object v9, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->version:Ljava/lang/String;

    iget-object v10, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->serial:Ljava/lang/String;

    iget-object v11, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->deviceIdMan:Ljava/lang/String;

    iget-object v12, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->manufacturer:Ljava/lang/String;

    const-string v13, "Android"

    const-string v14, "SDK"

    const-string v15, "149_20180910"

    move-object/from16 v16, p2

    invoke-interface/range {v3 .. v16}, Lcom/flickstree/player/player/sdk/ApiEndPoints;->addUserDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$2;

    invoke-direct {v2, v0}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$2;-><init>(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public callApiWithLang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static {p1}, Lcom/flickstree/player/player/sdk/ApiClient;->buildService(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;

    move-result-object v0

    const-string v1, "1.49"

    const-string v2, ""

    const-string v3, "JSON"

    const-string v4, "CATEGORY_VIDEOS"

    const-string v8, "SDK"

    const-string v9, "149_20180910"

    const-string v11, "yes"

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p2

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v11}, Lcom/flickstree/player/player/sdk/ApiEndPoints;->videoDetailsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;

    move-object v2, p0

    invoke-direct {v1, p0}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;-><init>(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public callApiWithLangFullscreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/flickstree/player/player/sdk/ApiClient;->buildService(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;

    move-result-object v1

    const-string v2, "1.49"

    iget-object v3, v0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->serial:Ljava/lang/String;

    const-string v4, "JSON"

    const-string v5, "CATEGORY_VIDEOS"

    const-string v9, "SDK"

    const-string v10, "149_20180918"

    const-string v12, "yes"

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, p2

    move-object/from16 v11, p5

    invoke-interface/range {v1 .. v12}, Lcom/flickstree/player/player/sdk/ApiEndPoints;->videoDetailsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;

    invoke-direct {v2, p0}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;-><init>(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public initWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->model:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->deviceIdMan:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->serial:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->mobile:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->version:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiWithLang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p5}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "exceptionModel"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    sget-object p6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p6, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->model:Ljava/lang/String;

    sget-object p6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p6, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string v0, "android_id"

    invoke-static {p6, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->deviceIdMan:Ljava/lang/String;

    sget-object p6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object p6, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->serial:Ljava/lang/String;

    sget-object p6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object p6, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->mobile:Ljava/lang/String;

    sget-object p6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p6, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->version:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p1, p5}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p6

    const-string v0, "exceptionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiWithLangFullscreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
