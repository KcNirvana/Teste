.class public Lcom/alipay/android/app/template/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# instance fields
.field public actionBarHeight:I

.field public appParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bundleName:Ljava/lang/String;

.field public businessId:Ljava/lang/String;

.field public callback:Lcom/alipay/android/app/template/OnLoadCallback;

.field public context:Landroid/content/Context;

.field public contextResources:Landroid/content/res/Resources;

.field public data:Ljava/lang/String;

.field public elementEventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field public eventBridge:Lcom/alipay/android/app/template/FBBridge;

.field public eventTarget:Ljava/lang/Object;

.field private expired:Z

.field public factory:Lcom/alipay/android/app/template/FBPluginFactory;

.field public jsDebugger:Z

.field public listener:Lcom/alipay/android/app/template/OnTemplateClickListener;

.field public mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field public mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

.field private mRuntime:Lcom/alipay/android/app/birdnest/a;

.field public resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

.field public tplHtml:Ljava/lang/String;

.field public tplId:Ljava/lang/String;

.field public tplJson:Ljava/lang/String;

.field public useQuickPayTemplateManager:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->jsDebugger:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->useQuickPayTemplateManager:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->expired:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->jsDebugger:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->useQuickPayTemplateManager:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->expired:Z

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/alipay/android/app/template/FBContext;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/template/Builder;->expired:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Builder is Expired!\n"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Builder\'s context is null!\n"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->appParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->tplId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->tplHtml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->tplJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Builder\'s tpl is empty!\n"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/Builder;->mRuntime:Lcom/alipay/android/app/birdnest/a;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/birdnest/a;->a(Lcom/alipay/android/app/template/Builder;)Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/alipay/android/app/template/Builder;->data:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/template/Builder;->tplHtml:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/template/Builder;->tplJson:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/template/Builder;->expired:Z

    :goto_0
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public createView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/Builder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBContext;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setActionBarHeight(I)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/template/Builder;->actionBarHeight:I

    return-object p0
.end method

.method public setAppParams(Ljava/util/Map;)Lcom/alipay/android/app/template/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/android/app/template/Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->appParams:Ljava/util/Map;

    return-object p0
.end method

.method public setBundleName(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->bundleName:Ljava/lang/String;

    return-object p0
.end method

.method public setBusinessId(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->businessId:Ljava/lang/String;

    return-object p0
.end method

.method public setContextResources(Landroid/content/res/Resources;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->contextResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public setEventBridge(Lcom/alipay/android/app/template/FBBridge;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->eventBridge:Lcom/alipay/android/app/template/FBBridge;

    return-object p0
.end method

.method public setEventTarget(Ljava/lang/Object;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->eventTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public setFlybirdRuntime(Lcom/alipay/android/app/birdnest/a;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->mRuntime:Lcom/alipay/android/app/birdnest/a;

    return-object p0
.end method

.method public setJsDebugger(Z)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/template/Builder;->jsDebugger:Z

    return-object p0
.end method

.method public setListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->listener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    return-object p0
.end method

.method public setOnLoadCallback(Lcom/alipay/android/app/template/OnLoadCallback;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->callback:Lcom/alipay/android/app/template/OnLoadCallback;

    return-object p0
.end method

.method public setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    return-object p0
.end method

.method public setResourceClient(Lcom/alipay/android/app/template/FBResourceClient;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

    return-object p0
.end method

.method public setTElementEventHandler(Lcom/alipay/android/app/template/event/TElementEventHandler;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->elementEventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    return-object p0
.end method

.method public setTemplateHtml(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->tplHtml:Ljava/lang/String;

    return-object p0
.end method

.method public setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->tplId:Ljava/lang/String;

    return-object p0
.end method

.method public setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->tplJson:Ljava/lang/String;

    return-object p0
.end method

.method public setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/template/Builder;->useQuickPayTemplateManager:Z

    return-object p0
.end method

.method public setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object p0
.end method

.method public setmPasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)Lcom/alipay/android/app/template/Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/Builder;->mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object p0
.end method
