.class final Lcom/miui/cleanmaster/g;
.super Lcom/miui/cleanmaster/InstallCallBack;
.source ""


# instance fields
.field final synthetic baW:Landroid/content/Intent;

.field final synthetic baX:I

.field final synthetic baY:Landroid/os/Bundle;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/cleanmaster/g;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/cleanmaster/g;->baW:Landroid/content/Intent;

    iput p3, p0, Lcom/miui/cleanmaster/g;->baX:I

    iput-object p4, p0, Lcom/miui/cleanmaster/g;->baY:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/miui/cleanmaster/InstallCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bxu(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/miui/cleanmaster/g;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/cleanmaster/g;->baW:Landroid/content/Intent;

    iget v2, p0, Lcom/miui/cleanmaster/g;->baX:I

    iget-object v3, p0, Lcom/miui/cleanmaster/g;->baY:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/cleanmaster/a;->bxz(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
