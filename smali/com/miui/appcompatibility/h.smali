.class final Lcom/miui/appcompatibility/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/h;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/a;->brX()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/appcompatibility/h;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/utils/b;->Iv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appcompatibility/h;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->getInstance(Landroid/content/Context;)Lcom/miui/appcompatibility/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/b;->initData()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bso(J)V

    :cond_1
    return-void
.end method
