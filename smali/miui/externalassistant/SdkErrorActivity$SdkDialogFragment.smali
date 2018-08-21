.class Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;
.super Landroid/app/DialogFragment;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/externalassistant/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdkDialogFragment"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lmiui/externalassistant/SdkErrorActivity;


# direct methods
.method public constructor <init>(Lmiui/externalassistant/SdkErrorActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p2, p0, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/SdkErrorActivity$SdkDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method
