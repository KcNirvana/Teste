.class Lcom/kaltura/playkit/LocalAssetsManager$1$1;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kaltura/playkit/LocalAssetsManager$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager$1;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$1;

    iput-object p2, p0, Lcom/kaltura/playkit/LocalAssetsManager$1$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$1$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$1;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$1;

    iget-object v1, v1, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$localAssetPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$1$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;->onFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
