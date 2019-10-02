.class Lcom/kaltura/playkit/LocalAssetsManager$2$1;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kaltura/playkit/LocalAssetsManager$2;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$2;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$2;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    invoke-static {v0}, Lcom/kaltura/playkit/LocalAssetsManager;->access$500(Lcom/kaltura/playkit/LocalAssetsManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;-><init>(Lcom/kaltura/playkit/LocalAssetsManager$2$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
