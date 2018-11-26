.class public Lcom/miui/securityscan/ui/a/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HW(I)V
    .locals 3

    new-instance v0, Lcom/miui/securityscan/ui/a/a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/securityscan/ui/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/ui/a/a;->HS(I)V

    new-instance v1, Landroid/widget/Toast;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
