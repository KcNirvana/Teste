.class Lcom/alipay/android/app/birdnest/b;
.super Ljava/lang/Object;
.source "FlybirdRuntime.java"

# interfaces
.implements Lcom/alipay/android/app/template/event/TElementEventHandler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/birdnest/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/a;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/b;->c:Lcom/alipay/android/app/birdnest/a;

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/b;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iput p3, p0, Lcom/alipay/android/app/birdnest/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/b;->c:Lcom/alipay/android/app/birdnest/a;

    invoke-static {v0, p3}, Lcom/alipay/android/app/birdnest/a;->a(Lcom/alipay/android/app/birdnest/a;Lcom/alipay/android/app/template/ITemplateClickCallback;)Lcom/alipay/android/app/template/ITemplateClickCallback;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/b;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z

    return v2
.end method

.method public onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/b;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z

    return v2
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v0, "sdkVersion"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FlybirdRuntime::onGetCustomAttr"

    const-string/jumbo v1, "sdkVersion:10.6.10"

    invoke-static {v4, v0, v1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "10.6.10"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "currentTplId"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/birdnest/b;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->getTopWindowFrame()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->getTopWindowFrame()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "FlybirdRuntime::onGetCustomAttr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentTplId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method
