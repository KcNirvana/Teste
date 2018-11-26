.class final Lcom/miui/powercenter/autotask/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aLY:Lcom/miui/powercenter/autotask/ChooseConditionActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/M;->aLY:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/M;->aLY:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->finish()V

    :cond_0
    return-void
.end method
