.class Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;
.super Lcom/mixpanel/android/java_websocket/client/WebSocketClient;
.source "EditorConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;Ljava/net/URI;ILjava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    new-instance p1, Lcom/mixpanel/android/java_websocket/drafts/Draft_17;

    invoke-direct {p1}, Lcom/mixpanel/android/java_websocket/drafts/Draft_17;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/mixpanel/android/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/mixpanel/android/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    invoke-virtual {p0, p4}, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->setSocket(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    const-string p3, "MixpanelAPI.EditorCnctn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket closed. Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nURI: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$200(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object p1

    invoke-interface {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->cleanup()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "MixpanelAPI.EditorCnctn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Websocket Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MixpanelAPI.EditorCnctn"

    const-string v0, "Unknown websocket error occurred"

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "MixpanelAPI.EditorCnctn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message from editor:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_info_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->sendDeviceInfo()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "snapshot_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->sendSnapshot(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string v2, "change_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->performEdit(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const-string v2, "event_binding_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->bindEvents(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v2, "clear_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->clearEdits(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string v2, "tweak_request"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorClient;->this$0:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->access$100(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$Editor;->setTweaks(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MixpanelAPI.EditorCnctn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad JSON received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onOpen(Lcom/mixpanel/android/java_websocket/handshake/ServerHandshake;)V
    .locals 1

    const-string p1, "MixpanelAPI.EditorCnctn"

    const-string v0, "Websocket connected"

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/MPLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
