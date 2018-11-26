.class public Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static final DIALOG_MESSAGE:Ljava/lang/String; = "dialog_message"

.field public static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"

.field private static final TAG:Ljava/lang/String; = "RoamingStateAlertActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dialog_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dialog_message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V

    const v1, 0x7f07032f

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V

    const v1, 0x1040009

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;-><init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
