.class final Lcom/miui/personalassistant/services/ContentCatcherReceiver$1;
.super Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;
.source "ContentCatcherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/services/ContentCatcherReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .locals 4

    if-nez p1, :cond_1

    const-string/jumbo v1, "ContentCatcherReceiver"

    const-string/jumbo v2, "onContentReceived: content is null"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ContentCatcherReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onContentReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getResults()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "payment"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getInjectorToken()Lmiui/contentcatcher/sdk/Token;

    move-result-object v2

    const-string/jumbo v1, "payment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/miui/payment/PaymentCaptorHelper;->parseCatcherResult(Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method
