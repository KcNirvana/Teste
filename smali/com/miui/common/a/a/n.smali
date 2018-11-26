.class final Lcom/miui/common/a/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic azr:Lcom/miui/common/a/a/d;


# direct methods
.method constructor <init>(Lcom/miui/common/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/a/a/n;->azr:Lcom/miui/common/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/common/a/a/n;->azr:Lcom/miui/common/a/a/d;

    invoke-static {v0}, Lcom/miui/common/a/a/d;->aGx(Lcom/miui/common/a/a/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
