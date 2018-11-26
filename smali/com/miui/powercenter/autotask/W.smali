.class final Lcom/miui/powercenter/autotask/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aMp:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

.field final synthetic aMq:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/W;->aMp:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/W;->aMq:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/W;->aMp:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXG(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/W;->aMp:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXG(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/W;->aMp:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/W;->aMp:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/powercenter/autotask/f;->aVL(Landroid/content/Context;Landroid/app/FragmentManager;[Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/W;->aMq:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
