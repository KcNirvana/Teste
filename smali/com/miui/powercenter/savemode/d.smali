.class final Lcom/miui/powercenter/savemode/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aOv:Lcom/miui/powercenter/savemode/c;

.field final synthetic aOw:Z


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/d;->aOv:Lcom/miui/powercenter/savemode/c;

    iput-boolean p2, p0, Lcom/miui/powercenter/savemode/d;->aOw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/savemode/d;->aOv:Lcom/miui/powercenter/savemode/c;

    iget-object v0, v0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/savemode/d;->aOw:Z

    invoke-static {v0, v1}, Lcom/miui/powercenter/a/a;->baR(Landroid/content/Context;Z)V

    return-void
.end method
