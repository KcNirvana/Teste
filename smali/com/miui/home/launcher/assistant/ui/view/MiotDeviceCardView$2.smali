.class Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$2;
.super Ljava/lang/Object;
.source "MiotDeviceCardView.java"

# interfaces
.implements Lmiui/accounts/MiuiOnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    return-void
.end method

.method public onPostAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->onAccountUpdated()V

    return-void
.end method

.method public onPreAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
