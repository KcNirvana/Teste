.class Lcom/kaltura/playkit/LocalAssetsManager$1;
.super Ljava/lang/Object;
.source "LocalAssetsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/LocalAssetsManager;->registerDrmAsset(Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/LocalAssetsManager;

.field final synthetic val$assetId:Ljava/lang/String;

.field final synthetic val$drmParams:Lcom/kaltura/playkit/PKDrmParams;

.field final synthetic val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

.field final synthetic val$localAssetPath:Ljava/lang/String;

.field final synthetic val$mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/PKDrmParams;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;Lcom/kaltura/playkit/PKMediaFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    iput-object p2, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$drmParams:Lcom/kaltura/playkit/PKDrmParams;

    iput-object p3, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$localAssetPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$assetId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    iput-object p6, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$drmParams:Lcom/kaltura/playkit/PKDrmParams;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKDrmParams;->getScheme()Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    invoke-static {v1}, Lcom/kaltura/playkit/LocalAssetsManager;->access$000(Lcom/kaltura/playkit/LocalAssetsManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    invoke-static {v2}, Lcom/kaltura/playkit/LocalAssetsManager;->access$100(Lcom/kaltura/playkit/LocalAssetsManager;)Lcom/kaltura/playkit/LocalDataStore;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kaltura/playkit/drm/DrmAdapter;->getDrmAdapter(Lcom/kaltura/playkit/PKDrmParams$Scheme;Landroid/content/Context;Lcom/kaltura/playkit/LocalDataStore;)Lcom/kaltura/playkit/drm/DrmAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$drmParams:Lcom/kaltura/playkit/PKDrmParams;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams;->getLicenseUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$localAssetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$assetId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/kaltura/playkit/drm/DrmAdapter;->registerAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    invoke-static {v0}, Lcom/kaltura/playkit/LocalAssetsManager;->access$100(Lcom/kaltura/playkit/LocalAssetsManager;)Lcom/kaltura/playkit/LocalDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$assetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/kaltura/playkit/LocalAssetsManager;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    iget-object v3, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$mediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    iget-object v4, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$drmParams:Lcom/kaltura/playkit/PKDrmParams;

    invoke-virtual {v4}, Lcom/kaltura/playkit/PKDrmParams;->getScheme()Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/kaltura/playkit/LocalAssetsManager;->access$300(Lcom/kaltura/playkit/LocalAssetsManager;Lcom/kaltura/playkit/PKMediaFormat;Lcom/kaltura/playkit/PKDrmParams$Scheme;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kaltura/playkit/LocalDataStore;->save(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/kaltura/playkit/LocalAssetsManager;->access$400()Lcom/kaltura/playkit/PKLog;

    move-result-object v1

    const-string v2, "Error"

    invoke-virtual {v1, v2, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->val$listener:Lcom/kaltura/playkit/LocalAssetsManager$AssetRegistrationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaltura/playkit/LocalAssetsManager$1;->this$0:Lcom/kaltura/playkit/LocalAssetsManager;

    invoke-static {v1}, Lcom/kaltura/playkit/LocalAssetsManager;->access$500(Lcom/kaltura/playkit/LocalAssetsManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kaltura/playkit/LocalAssetsManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/kaltura/playkit/LocalAssetsManager$1$1;-><init>(Lcom/kaltura/playkit/LocalAssetsManager$1;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method
