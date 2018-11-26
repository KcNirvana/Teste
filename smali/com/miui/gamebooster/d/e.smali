.class final Lcom/miui/gamebooster/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic sL:Lcom/miui/gamebooster/d/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/e;->sL:Lcom/miui/gamebooster/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/e;->sL:Lcom/miui/gamebooster/d/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/a;->uB()V

    iget-object v0, p0, Lcom/miui/gamebooster/d/e;->sL:Lcom/miui/gamebooster/d/a;

    invoke-static {v0}, Lcom/miui/gamebooster/d/a;->uC(Lcom/miui/gamebooster/d/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "00007"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gamebooster/a/a;->eZ(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method
