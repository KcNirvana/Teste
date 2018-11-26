.class final Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/securitycenter/dynamic/ApkLoader$2;

.field final synthetic val$result:Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/dynamic/ApkLoader$2;Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->this$1:Lcom/miui/securitycenter/dynamic/ApkLoader$2;

    iput-object p2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->val$result:Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->this$1:Lcom/miui/securitycenter/dynamic/ApkLoader$2;

    iget-object v0, v0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-set1(Lcom/miui/securitycenter/dynamic/ApkLoader;Z)Z

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->val$result:Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->this$1:Lcom/miui/securitycenter/dynamic/ApkLoader$2;

    iget-object v0, v0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-set0(Lcom/miui/securitycenter/dynamic/ApkLoader;Z)Z

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->this$1:Lcom/miui/securitycenter/dynamic/ApkLoader$2;

    iget-object v0, v0, Lcom/miui/securitycenter/dynamic/ApkLoader$2;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$2$1;->val$result:Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;

    invoke-static {v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-wrap4(Lcom/miui/securitycenter/dynamic/ApkLoader;Lcom/miui/securitycenter/dynamic/ApkLoader$DownloadInfo;)V

    :cond_0
    return-void
.end method
