.class Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;
.super Ljava/lang/Object;
.source "SearchCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v3, "requestCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "reintentdata"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->refreshHeaderView(Z)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->dismissPickDialog()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pick or crop photo cancled(or failed)"

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->dismissPickDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
