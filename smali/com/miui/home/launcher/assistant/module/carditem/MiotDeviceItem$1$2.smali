.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->onFailure(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->NOT_LOGIN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$002(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$102(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    return-void
.end method
