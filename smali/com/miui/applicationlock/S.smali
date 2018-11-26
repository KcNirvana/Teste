.class final Lcom/miui/applicationlock/S;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic ajy:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/S;->ajy:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/miui/applicationlock/S;->ajy:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->age(JLandroid/content/Context;)V

    return-void
.end method
