.class final Lcom/miui/powercenter/autotask/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aMd:I

.field final synthetic aMe:Lcom/miui/powercenter/autotask/AutoTask;

.field final synthetic aMf:Ljava/lang/String;

.field final synthetic aMg:Lcom/miui/powercenter/autotask/p;


# direct methods
.method constructor <init>(ILcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/p;)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/Q;->aMd:I

    iput-object p2, p0, Lcom/miui/powercenter/autotask/Q;->aMe:Lcom/miui/powercenter/autotask/AutoTask;

    iput-object p3, p0, Lcom/miui/powercenter/autotask/Q;->aMf:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/powercenter/autotask/Q;->aMg:Lcom/miui/powercenter/autotask/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/powercenter/autotask/Q;->aMd:I

    if-eq p2, v3, :cond_1

    if-nez p2, :cond_2

    move v1, v2

    :cond_0
    :goto_0
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/Q;->aMe:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/Q;->aMf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/Q;->aMg:Lcom/miui/powercenter/autotask/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/Q;->aMg:Lcom/miui/powercenter/autotask/p;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/Q;->aMf:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/powercenter/autotask/p;->aXA(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    if-eq p2, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "gps"

    iget-object v4, p0, Lcom/miui/powercenter/autotask/Q;->aMf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v1, v2, :cond_4

    const/4 v0, 0x3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/miui/powercenter/autotask/Q;->aMe:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/Q;->aMf:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
