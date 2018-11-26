.class final Lcom/miui/gamebooster/ui/am;
.super Lcom/miui/common/a/b/b;
.source ""


# instance fields
.field final synthetic dL:Lcom/miui/gamebooster/ui/al;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/al;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/am;->dL:Lcom/miui/gamebooster/ui/al;

    invoke-direct {p0, p2}, Lcom/miui/common/a/b/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/am;->dL:Lcom/miui/gamebooster/ui/al;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/al;->dK:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bO(Lcom/miui/gamebooster/ui/c;)V

    return-void
.end method
