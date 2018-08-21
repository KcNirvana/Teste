.class Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;
.super Ljava/lang/Object;
.source "BallDownloadDialogActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->finish()V

    return-void
.end method

.method public onNegativeBtnClick()V
    .locals 0

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->finish()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->access$000(Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onReTipBtnClick()V
    .locals 0

    return-void
.end method
