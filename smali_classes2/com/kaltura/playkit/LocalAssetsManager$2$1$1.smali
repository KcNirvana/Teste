.class Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager$2$1;->onRemoved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kaltura/playkit/LocalAssetsManager$2$1;

.field final synthetic val$localAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager$2$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;->this$2:Lcom/kaltura/playkit/LocalAssetsManager$2$1;

    iput-object p2, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;->val$localAssetPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;->this$2:Lcom/kaltura/playkit/LocalAssetsManager$2$1;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$2$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$2;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$2;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;->val$localAssetPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;->this$2:Lcom/kaltura/playkit/LocalAssetsManager$2$1;

    iget-object v2, v2, Lcom/kaltura/playkit/LocalAssetsManager$2$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$2;

    iget-object v2, v2, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$assetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/kaltura/playkit/LocalAssetsManager$2$1$1;->this$2:Lcom/kaltura/playkit/LocalAssetsManager$2$1;

    iget-object v3, v3, Lcom/kaltura/playkit/LocalAssetsManager$2$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$2;

    iget-object v3, v3, Lcom/kaltura/playkit/LocalAssetsManager$2;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;

    invoke-static {v0, v1, v2, v3}, Lcom/kaltura/playkit/LocalAssetsManager;->access$600(Lcom/kaltura/playkit/LocalAssetsManager;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRemovalListener;)V

    return-void
.end method
