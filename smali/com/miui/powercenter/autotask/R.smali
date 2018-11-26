.class final Lcom/miui/powercenter/autotask/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aMh:[I

.field final synthetic aMi:Lcom/miui/powercenter/autotask/AutoTask;

.field final synthetic aMj:Lcom/miui/powercenter/autotask/p;


# direct methods
.method constructor <init>([ILcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/p;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/R;->aMh:[I

    iput-object p2, p0, Lcom/miui/powercenter/autotask/R;->aMi:Lcom/miui/powercenter/autotask/AutoTask;

    iput-object p3, p0, Lcom/miui/powercenter/autotask/R;->aMj:Lcom/miui/powercenter/autotask/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/R;->aMh:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/R;->aMi:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "auto_clean_memory"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/R;->aMj:Lcom/miui/powercenter/autotask/p;

    const-string/jumbo v1, "auto_clean_memory"

    invoke-interface {v0, v1}, Lcom/miui/powercenter/autotask/p;->aXA(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/R;->aMi:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v2, "auto_clean_memory"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
