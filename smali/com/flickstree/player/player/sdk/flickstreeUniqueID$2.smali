.class Lcom/flickstree/player/player/sdk/flickstreeUniqueID$2;
.super Ljava/lang/Object;
.source "flickstreeUniqueID.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flickstree/player/player/sdk/flickstreeUniqueID;->callApiAddDevice(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/flickstree/player/player/sdk/UserDetailsBean/ResponseUserDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;


# direct methods
.method constructor <init>(Lcom/flickstree/player/player/sdk/flickstreeUniqueID;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/flickstreeUniqueID$2;->this$0:Lcom/flickstree/player/player/sdk/flickstreeUniqueID;

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
            "Lcom/flickstree/player/player/sdk/UserDetailsBean/ResponseUserDetails;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "exceptionAddUser"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/flickstree/player/player/sdk/UserDetailsBean/ResponseUserDetails;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/flickstree/player/player/sdk/UserDetailsBean/ResponseUserDetails;",
            ">;)V"
        }
    .end annotation

    const-string p1, "ResponseAddUser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flickstree/player/player/sdk/UserDetailsBean/ResponseUserDetails;

    invoke-virtual {p2}, Lcom/flickstree/player/player/sdk/UserDetailsBean/ResponseUserDetails;->getRESPONSE()Lcom/flickstree/player/player/sdk/UserDetailsBean/RESPONSE;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
