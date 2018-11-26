.class final Lcom/miui/powercenter/autotask/T;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aMm:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/T;->aMm:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/T;->aMm:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXE(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Lcom/miui/powercenter/autotask/FloatActionButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/T;->aMm:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXH(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;I)V

    :cond_0
    return-void
.end method
