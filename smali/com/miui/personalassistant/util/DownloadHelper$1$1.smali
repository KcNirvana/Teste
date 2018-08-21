.class Lcom/miui/personalassistant/util/DownloadHelper$1$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/DownloadHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/DownloadHelper$1;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iput-object p2, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v0, v0, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v0}, Lcom/miui/personalassistant/util/DownloadHelper;->access$200(Lcom/miui/personalassistant/util/DownloadHelper;)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v0, v0, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v0}, Lcom/miui/personalassistant/util/DownloadHelper;->access$300(Lcom/miui/personalassistant/util/DownloadHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DownloadHelper"

    const-string/jumbo v1, "download file success"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v2, v2, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v2}, Lcom/miui/personalassistant/util/DownloadHelper;->access$400(Lcom/miui/personalassistant/util/DownloadHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v3, v3, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v3}, Lcom/miui/personalassistant/util/DownloadHelper;->access$500(Lcom/miui/personalassistant/util/DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v4, v4, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v4}, Lcom/miui/personalassistant/util/DownloadHelper;->access$600(Lcom/miui/personalassistant/util/DownloadHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v5, v5, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v5}, Lcom/miui/personalassistant/util/DownloadHelper;->access$700(Lcom/miui/personalassistant/util/DownloadHelper;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/personalassistant/util/DownloadHelper;->notifyBroadcast(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/miui/personalassistant/util/DownloadHelper;->access$800()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "upgrade_apk_version"

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v2, v2, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v2}, Lcom/miui/personalassistant/util/DownloadHelper;->access$600(Lcom/miui/personalassistant/util/DownloadHelper;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v0, v0, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v0}, Lcom/miui/personalassistant/util/DownloadHelper;->access$900(Lcom/miui/personalassistant/util/DownloadHelper;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "DownloadHelper"

    const-string/jumbo v1, "download file md5 error"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper$1$1;->this$1:Lcom/miui/personalassistant/util/DownloadHelper$1;

    iget-object v0, v0, Lcom/miui/personalassistant/util/DownloadHelper$1;->this$0:Lcom/miui/personalassistant/util/DownloadHelper;

    invoke-static {v0}, Lcom/miui/personalassistant/util/DownloadHelper;->access$400(Lcom/miui/personalassistant/util/DownloadHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/FileUtils;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method
