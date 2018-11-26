.class final Lcom/miui/powercenter/autotask/S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aMk:Lcom/miui/powercenter/autotask/r;

.field final synthetic aMl:Lcom/miui/powercenter/autotask/AutoTask;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/r;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/S;->aMk:Lcom/miui/powercenter/autotask/r;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/S;->aMl:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/S;->aMl:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/S;->aMl:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcom/miui/powercenter/autotask/f;->aVM(Landroid/content/Context;JZ)V

    invoke-static {}, Lcom/miui/powercenter/b/a;->bdj()V

    return-void
.end method
