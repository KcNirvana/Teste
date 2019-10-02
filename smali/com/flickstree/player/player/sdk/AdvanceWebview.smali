.class public Lcom/flickstree/player/player/sdk/AdvanceWebview;
.super Landroid/webkit/WebView;
.source "AdvanceWebview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flickstree/player/player/sdk/AdvanceWebview$RunnableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvanceWebview"


# instance fields
.field cId:Ljava/lang/String;

.field confirmDuration:[I

.field count:I

.field private deviceId:Ljava/lang/String;

.field private deviceIdMan:Ljava/lang/String;

.field durationCount:I

.field editValue:Ljava/lang/String;

.field finalDuration:[I

.field finalPosition:[I

.field finalValue:[I

.field ftValue:F

.field isPlaying:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field result:Z

.field private runnableListener:Lcom/flickstree/player/player/sdk/AdvanceWebview$RunnableListener;

.field private serial:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalValue:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalPosition:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalDuration:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->durationCount:I

    iput p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    const-string p1, "samsung"

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->cId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalValue:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalPosition:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalDuration:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->durationCount:I

    iput p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    const-string p1, "samsung"

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->cId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalValue:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalPosition:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalDuration:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->durationCount:I

    iput p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    const-string p1, "samsung"

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->cId:Ljava/lang/String;

    return-void
.end method

.method private callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->model:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->manufacturer:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->deviceIdMan:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->serial:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->mobile:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->version:Ljava/lang/String;

    iget-object v1, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->model:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/flickstree/player/player/sdk/ApiClient;->buildService(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;

    move-result-object v3

    const-string v4, "1.49"

    const-string v5, "JSON"

    const-string v6, "ADD_USER"

    iget-object v7, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->serial:Ljava/lang/String;

    iget-object v9, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->version:Ljava/lang/String;

    iget-object v10, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->serial:Ljava/lang/String;

    iget-object v11, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->deviceIdMan:Ljava/lang/String;

    iget-object v12, v0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->manufacturer:Ljava/lang/String;

    const-string v13, "Android"

    const-string v14, "SDK"

    const-string v15, "149_20180910"

    move-object/from16 v16, p2

    invoke-interface/range {v3 .. v16}, Lcom/flickstree/player/player/sdk/ApiEndPoints;->addUserDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/flickstree/player/player/sdk/AdvanceWebview$10;

    invoke-direct {v2, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$10;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getCurrentTimeSeconds()I
    .locals 4

    const-string v0, "javascript:getJWAction(true,\'getPosition\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:playResponse()"

    new-instance v1, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;

    invoke-direct {v1, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$9;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    invoke-virtual {p0, v0, v1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const-string v0, "AdvanceWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalValue:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->finalValue:[I

    aget v0, v0, v3

    return v0
.end method

.method private getVolume()I
    .locals 3

    const-string v0, "javascript:getJWAction(true,\'getVolume\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "javascript:playResponse()"

    new-instance v2, Lcom/flickstree/player/player/sdk/AdvanceWebview$5;

    invoke-direct {v2, p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$5;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;[I)V

    invoke-virtual {p0, v1, v2}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private isPlaying()Z
    .locals 3

    const-string v0, "javascript:getJWAction(true,\'isPlaying\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:playResponse()"

    new-instance v1, Lcom/flickstree/player/player/sdk/AdvanceWebview$8;

    invoke-direct {v1, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$8;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    invoke-virtual {p0, v0, v1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->isPlaying:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->isPlaying:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->isPlaying:Ljava/lang/String;

    const-string v1, "playing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdvanceWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->isPlaying:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->result:Z

    goto :goto_0

    :cond_0
    const-string v0, "AdvanceWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->isPlaying:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->result:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->result:Z

    return v0
.end method

.method private setFullscreen(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",\'setFullscreen\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDurationSeconds()I
    .locals 3

    iget v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->durationCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "javascript:getJWAction(true,\'getDuration\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:playResponse()"

    new-instance v2, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;

    invoke-direct {v2, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$6;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    invoke-virtual {p0, v0, v2}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    aget v2, v2, v1

    aput v2, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->confirmDuration:[I

    aget v0, v0, v1

    return v0
.end method

.method public loadVideo(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.flickstree.com/partners/samsung/jwplayer.php?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;

    invoke-direct {p4, p0, p2}, Lcom/flickstree/player/player/sdk/AdvanceWebview$2;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "cfd363b9acf1b42"

    invoke-direct {p0, p3, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public loadVideo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "cfd363b9acf1b42"

    invoke-direct {p0, p2, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.flickstree.com/partners/samsung/jwplayer.php?id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/flickstree/player/player/sdk/AdvanceWebview$1;

    invoke-direct {p2, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$1;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public pause()V
    .locals 1

    const-string v0, "javascript:getJWAction(true,\'pause\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .locals 1

    const-string v0, "javascript:getJWAction(true,\'play\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.flickstree.com/partners/samsung/jwplayer.php?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/flickstree/player/player/sdk/AdvanceWebview$4;

    invoke-direct {p4, p0, p2}, Lcom/flickstree/player/player/sdk/AdvanceWebview$4;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "cfd363b9acf1b42"

    invoke-direct {p0, p3, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "cfd363b9acf1b42"

    invoke-direct {p0, p2, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.flickstree.com/partners/samsung/jwplayer.php?id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/flickstree/player/player/sdk/AdvanceWebview$3;

    invoke-direct {p2, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$3;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\'seek\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",\'mute\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setPlaybackRate(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\'setPlaybackRate\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoQuality(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\'setCurrentQuality\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\'setVolume\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public volumeHigh()V
    .locals 2

    iget v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    iget v0, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-string v0, "javascript:getJWAction( 100,\'setVolume\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:getJWAction( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flickstree/player/player/sdk/AdvanceWebview;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\'setVolume\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public volumeLow()V
    .locals 2

    const-string v0, "javascript:getJWAction(true,\'getVolume\')"

    invoke-virtual {p0, v0}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->loadUrl(Ljava/lang/String;)V

    const-string v0, "javascript:playResponse()"

    new-instance v1, Lcom/flickstree/player/player/sdk/AdvanceWebview$7;

    invoke-direct {v1, p0}, Lcom/flickstree/player/player/sdk/AdvanceWebview$7;-><init>(Lcom/flickstree/player/player/sdk/AdvanceWebview;)V

    invoke-virtual {p0, v0, v1}, Lcom/flickstree/player/player/sdk/AdvanceWebview;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
