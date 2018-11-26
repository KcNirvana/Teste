.class final Lcom/miui/googlebase/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bdA:Lcom/miui/googlebase/GoogleBaseAppInstallService;


# direct methods
.method constructor <init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/g;->bdA:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "start preinstall apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/g;->bdA:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAG(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V

    iget-object v0, p0, Lcom/miui/googlebase/g;->bdA:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAA(Lcom/miui/googlebase/GoogleBaseAppInstallService;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
