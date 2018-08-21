.class final Lcom/miui/home/launcher/assistant/util/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/market/pm/api/MarketInstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/Util;->installApk(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/Util$2;->val$assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefuseInstall(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "onRefuseInstall"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/Util$2;->val$assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeLoading(Z)V

    return-void
.end method

.method public onServiceDead()V
    .locals 2

    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "onRefuseInstall"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/Util$2;->val$assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeLoading(Z)V

    return-void
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "Util"

    const-string/jumbo v1, "packageInstalled"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
