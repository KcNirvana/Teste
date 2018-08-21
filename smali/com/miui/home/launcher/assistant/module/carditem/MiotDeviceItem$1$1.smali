.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "current_uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    sget-object v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_SUCCESS:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$002(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->startRefresh(Ljava/lang/String;)V

    return-void
.end method
