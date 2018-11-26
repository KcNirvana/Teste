.class final Lcom/miui/googlebase/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bdB:Lcom/miui/googlebase/GoogleBaseAppInstallService;


# direct methods
.method constructor <init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/h;->bdB:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "GoogleBaseApp"

    const-string/jumbo v1, "user cancel installation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/googlebase/h;->bdB:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V

    iget-object v0, p0, Lcom/miui/googlebase/h;->bdB:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-virtual {v0}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->stopSelf()V

    iget-object v0, p0, Lcom/miui/googlebase/h;->bdB:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAA(Lcom/miui/googlebase/GoogleBaseAppInstallService;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
