.class Lcom/market/sdk/ImageManager$ImageLoadTask$1;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/ImageManager$ImageLoadTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/ImageManager$ImageLoadTask;


# direct methods
.method constructor <init>(Lcom/market/sdk/ImageManager$ImageLoadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$ImageLoadTask;

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$ImageLoadTask;

    invoke-static {v0}, Lcom/market/sdk/ImageManager$ImageLoadTask;->access$300(Lcom/market/sdk/ImageManager$ImageLoadTask;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$ImageLoadTask;

    invoke-static {v1}, Lcom/market/sdk/ImageManager$ImageLoadTask;->access$400(Lcom/market/sdk/ImageManager$ImageLoadTask;)I

    move-result v1

    iget-object v2, p0, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$ImageLoadTask;

    invoke-static {v2}, Lcom/market/sdk/ImageManager$ImageLoadTask;->access$500(Lcom/market/sdk/ImageManager$ImageLoadTask;)I

    move-result v2

    iget-object v3, p0, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$ImageLoadTask;

    invoke-static {v3}, Lcom/market/sdk/ImageManager$ImageLoadTask;->access$600(Lcom/market/sdk/ImageManager$ImageLoadTask;)Lcom/market/sdk/IImageCallback;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/market/sdk/IMarketService;->loadImage(Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V

    const/4 p1, 0x0

    return-object p1
.end method
