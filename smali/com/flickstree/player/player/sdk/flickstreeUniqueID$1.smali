.class Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;
.super Ljava/lang/Object;
.source "flickstreeUniqueID.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiWithLang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

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
    .locals 0
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

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;

    invoke-virtual {p2}, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/ResponseVideoDetails;->getRESPONSE()Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->access$002(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$1;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

    invoke-static {p2}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->access$000(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->getWatchUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
