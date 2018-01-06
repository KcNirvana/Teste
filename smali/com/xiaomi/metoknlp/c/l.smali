.class Lcom/xiaomi/metoknlp/c/l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/c/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/metoknlp/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/l;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/l;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/g;->a(Lcom/xiaomi/metoknlp/c/g;)Lcom/xiaomi/metoknlp/c/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/c/o;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/l;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/g;->a(Lcom/xiaomi/metoknlp/c/g;)Lcom/xiaomi/metoknlp/c/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/c/o;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/l;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/g;->a(Lcom/xiaomi/metoknlp/c/g;)Lcom/xiaomi/metoknlp/c/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/c/o;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/l;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/c/g;->a(Lcom/xiaomi/metoknlp/c/g;)Lcom/xiaomi/metoknlp/c/o;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/metoknlp/c/o;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
