.class public Lcom/flybird/FBClickCallBack;
.super Ljava/lang/Object;
.source "FBClickCallBack.java"

# interfaces
.implements Lcom/alipay/android/app/template/ITemplateClickCallback;


# instance fields
.field private mDocument:Lcom/flybird/FBDocument;

.field private mFuncKey:I


# direct methods
.method public constructor <init>(ILcom/flybird/FBDocument;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/flybird/FBClickCallBack;->mFuncKey:I

    iput p1, p0, Lcom/flybird/FBClickCallBack;->mFuncKey:I

    iput-object p2, p0, Lcom/flybird/FBClickCallBack;->mDocument:Lcom/flybird/FBDocument;

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/FBClickCallBack;)I
    .locals 1

    iget v0, p0, Lcom/flybird/FBClickCallBack;->mFuncKey:I

    return v0
.end method

.method static synthetic access$100(Lcom/flybird/FBClickCallBack;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flybird/FBClickCallBack;->innerCallJsMethod(ILjava/lang/String;)V

    return-void
.end method

.method private innerCallJsMethod(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/flybird/FBClickCallBack;->mDocument:Lcom/flybird/FBDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBClickCallBack;->mDocument:Lcom/flybird/FBDocument;

    invoke-virtual {v1, p1, v0}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBClickCallBack;->mDocument:Lcom/flybird/FBDocument;

    const/4 v0, -0x1

    iput v0, p0, Lcom/flybird/FBClickCallBack;->mFuncKey:I

    return-void
.end method

.method public onClickCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBClickCallBack;->mDocument:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBClickCallBack;->mFuncKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flybird/FBClickCallBack;->mDocument:Lcom/flybird/FBDocument;

    new-instance v1, Lcom/flybird/FBClickCallBack$1;

    invoke-direct {v1, p0, p1}, Lcom/flybird/FBClickCallBack$1;-><init>(Lcom/flybird/FBClickCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/flybird/FBClickCallBack;->mFuncKey:I

    invoke-direct {p0, v0, p1}, Lcom/flybird/FBClickCallBack;->innerCallJsMethod(ILjava/lang/String;)V

    goto :goto_0
.end method
