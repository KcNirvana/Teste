.class public Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field private static final REBOOT_REASON:Ljava/lang/String; = "network stats exception,reboot by security center"


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private buildAlertDialog()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0703d9

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0703db

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0703dc

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setPostiveText(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;->buildAlertDialog()V

    return-void
.end method
