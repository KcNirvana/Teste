.class public Lcom/miui/securitycenter/memory/MemoryCheckService;
.super Landroid/app/Service;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/memory/MemoryCheck;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/memory/MemoryCheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
