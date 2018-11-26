.class final Lcom/miui/securitycenter/dynamic/ApkLoader$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/dynamic/ApkLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$1;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$1;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->-get0(Lcom/miui/securitycenter/dynamic/ApkLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securitycenter/dynamic/ApkLoader$1$1;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/dynamic/ApkLoader$1$1;-><init>(Lcom/miui/securitycenter/dynamic/ApkLoader$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
