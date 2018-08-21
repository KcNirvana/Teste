.class Lmiui/externalassistant/SdkErrorActivity$2$1;
.super Landroid/os/AsyncTask;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/externalassistant/SdkErrorActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/externalassistant/SdkErrorActivity$2;

.field final synthetic val$updateDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lmiui/externalassistant/SdkErrorActivity$2;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->this$1:Lmiui/externalassistant/SdkErrorActivity$2;

    iput-object p2, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->val$updateDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->this$1:Lmiui/externalassistant/SdkErrorActivity$2;

    iget-object v1, v1, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-static {v1}, Lmiui/externalassistant/SdkErrorActivity;->access$100(Lmiui/externalassistant/SdkErrorActivity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/externalassistant/SdkErrorActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v1, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->val$updateDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->this$1:Lmiui/externalassistant/SdkErrorActivity$2;

    iget-object v1, v1, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-static {v1}, Lmiui/externalassistant/SdkErrorActivity;->access$200(Lmiui/externalassistant/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    new-instance v1, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;

    iget-object v2, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->this$1:Lmiui/externalassistant/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/externalassistant/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->this$1:Lmiui/externalassistant/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-virtual {v2}, Lmiui/externalassistant/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lmiui/externalassistant/SdkErrorActivity$2$1;->this$1:Lmiui/externalassistant/SdkErrorActivity$2;

    iget-object v1, v1, Lmiui/externalassistant/SdkErrorActivity$2;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-static {v1}, Lmiui/externalassistant/SdkErrorActivity;->access$300(Lmiui/externalassistant/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/externalassistant/SdkErrorActivity$2$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
