.class Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;

.field final synthetic val$callback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$callback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "HttpClient"

    const-string v0, "onFailure"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$callback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$callback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    invoke-interface {p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$callback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$clazz:Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$callback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/SingleGson;->get()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/HttpClient$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
