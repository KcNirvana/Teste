.class Lcom/kaltura/playkit/LocalAssetsManager$3$1;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kaltura/playkit/LocalAssetsManager$3;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$3$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Ljava/lang/String;JJZ)V
    .locals 11

    move-object v8, p0

    iget-object v0, v8, Lcom/kaltura/playkit/LocalAssetsManager$3$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$3;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$3;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/kaltura/playkit/LocalAssetsManager$3$1;->this$1:Lcom/kaltura/playkit/LocalAssetsManager$3;

    iget-object v0, v0, Lcom/kaltura/playkit/LocalAssetsManager$3;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    invoke-static {v0}, Lcom/kaltura/playkit/LocalAssetsManager;->access$500(Lcom/kaltura/playkit/LocalAssetsManager;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kaltura/playkit/LocalAssetsManager$3$1$1;-><init>(Lcom/kaltura/playkit/LocalAssetsManager$3$1;Ljava/lang/String;JJZ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
