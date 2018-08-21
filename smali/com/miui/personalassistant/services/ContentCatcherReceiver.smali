.class public Lcom/miui/personalassistant/services/ContentCatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContentCatcherReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentCatcherReceiver"

.field private static sClientToken:Lmiui/contentcatcher/sdk/ClientToken;

.field private static sContentListenerCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/contentcatcher/sdk/ClientToken;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-direct {v0, v1}, Lmiui/contentcatcher/sdk/ClientToken;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->sClientToken:Lmiui/contentcatcher/sdk/ClientToken;

    new-instance v0, Lcom/miui/personalassistant/services/ContentCatcherReceiver$1;

    invoke-direct {v0}, Lcom/miui/personalassistant/services/ContentCatcherReceiver$1;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->sContentListenerCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 9

    const-string/jumbo v6, "content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/ClientCatcherResult;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v6, "ContentCatcherReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseIntent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getInjectorToken()Lmiui/contentcatcher/sdk/Token;

    move-result-object v2

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getResults()Ljava/util/Map;

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v7, "payment"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object v7

    invoke-static {v2, v4, v7}, Lcom/miui/payment/PaymentCaptorHelper;->parseCatcherResult(Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static registerContentCatcherListener()V
    .locals 3

    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->sClientToken:Lmiui/contentcatcher/sdk/ClientToken;

    sget-object v2, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->sContentListenerCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;

    invoke-virtual {v0, v1, v2}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    const-string/jumbo v0, "ContentCatcherReceiver"

    const-string/jumbo v1, "registerContentCatcherListener: register"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unregisterContentCatcherListener()V
    .locals 2

    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->sClientToken:Lmiui/contentcatcher/sdk/ClientToken;

    invoke-virtual {v0, v1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    const-string/jumbo v0, "ContentCatcherReceiver"

    const-string/jumbo v1, "unregisterContentCatcherListener: unregister"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->parseIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/personalassistant/services/ContentCatcherReceiver;->registerContentCatcherListener()V

    const-string/jumbo v0, "ContentCatcherReceiver"

    const-string/jumbo v1, "end"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
