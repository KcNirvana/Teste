.class Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager$3$1;->onStatus(Ljava/lang/String;JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kaltura/playkit/LocalAssetsManager$3$1;

.field final synthetic val$availableTimeSeconds:J

.field final synthetic val$expiryTimeSeconds:J

.field final synthetic val$isRegistered:Z

.field final synthetic val$localAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager$3$1;Ljava/lang/String;JJZ)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->this$2:Lcom/kaltura/playkit/LocalAssetsManager$3$1;

    iput-object p2, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$localAssetPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$expiryTimeSeconds:J

    iput-wide p5, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$availableTimeSeconds:J

    iput-boolean p7, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$isRegistered:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->this$2:Lcom/kaltura/playkit/LocalAssetsManager$3$1;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$3$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$3;

    iget-object v1, v0, Lcom/kaltura/playkit/LocalAssetsManager$3;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$localAssetPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$expiryTimeSeconds:J

    iget-wide v5, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$availableTimeSeconds:J

    iget-boolean v7, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;->val$isRegistered:Z

    invoke-interface/range {v1 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;->onStatus(Ljava/lang/String;JJZ)V

    return-void
.end method
