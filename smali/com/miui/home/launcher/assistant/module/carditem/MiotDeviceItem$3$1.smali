.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->onFailure(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    iput p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->val$errorCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->val$errorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->NOT_LOGIN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$002(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$102(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->val$errorCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$002(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    goto :goto_0
.end method
