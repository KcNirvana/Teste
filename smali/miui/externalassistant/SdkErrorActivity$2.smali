.class Lmiui/externalassistant/SdkErrorActivity$2;
.super Ljava/lang/Object;
.source "SdkErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/externalassistant/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/externalassistant/SdkErrorActivity;


# direct methods
.method constructor <init>(Lmiui/externalassistant/SdkErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-static {v1}, Lmiui/externalassistant/SdkErrorActivity;->access$000(Lmiui/externalassistant/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;

    iget-object v2, p0, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/externalassistant/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-virtual {v2}, Lmiui/externalassistant/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "SdkUpdatePromptDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v1, Lmiui/externalassistant/SdkErrorActivity$2$1;

    invoke-direct {v1, p0, v0}, Lmiui/externalassistant/SdkErrorActivity$2$1;-><init>(Lmiui/externalassistant/SdkErrorActivity$2;Landroid/app/Dialog;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lmiui/externalassistant/SdkErrorActivity$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
