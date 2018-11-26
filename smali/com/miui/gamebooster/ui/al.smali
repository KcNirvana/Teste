.class final Lcom/miui/gamebooster/ui/al;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dK:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/al;->dK:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/al;->dK:Lcom/miui/gamebooster/ui/c;

    new-instance v1, Lcom/miui/gamebooster/ui/am;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/al;->dK:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bc(Lcom/miui/gamebooster/ui/c;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gamebooster/ui/am;-><init>(Lcom/miui/gamebooster/ui/al;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bQ(Lcom/miui/gamebooster/ui/c;Lcom/miui/common/a/b/b;)V

    return-void
.end method
