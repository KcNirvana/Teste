.class Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;
.super Ljava/lang/Object;
.source "flickstreeUniqueID.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiWithLangFullscreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;

    invoke-virtual {p2}, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;->getRESPONSE()Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->access$002(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-static {p1}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->access$000(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->getWatchUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "watchUrl"

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-static {v0}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->access$000(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->getWatchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-virtual {p2}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p2, v0}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$3;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
