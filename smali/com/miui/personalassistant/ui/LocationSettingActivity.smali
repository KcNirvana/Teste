.class public Lcom/miui/personalassistant/ui/LocationSettingActivity;
.super Lmiui/app/Activity;
.source "LocationSettingActivity.java"


# instance fields
.field private mLocationSettingCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLocationSettingOpenListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/ui/LocationSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/LocationSettingActivity$1;-><init>(Lcom/miui/personalassistant/ui/LocationSettingActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity;->mLocationSettingCancelListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;-><init>(Lcom/miui/personalassistant/ui/LocationSettingActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity;->mLocationSettingOpenListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static showLocationSettingDialog(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b02c4

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b02c3

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b0b02c0

    const v1, 0x1b0b02c1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity;->mLocationSettingOpenListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity;->mLocationSettingCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/personalassistant/ui/LocationSettingActivity;->showLocationSettingDialog(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
