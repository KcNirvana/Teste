.class final Lcom/miui/securityscan/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic NG:Lcom/miui/securityscan/MainActivity;

.field final synthetic NH:Z


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/y;->NG:Lcom/miui/securityscan/MainActivity;

    iput-boolean p2, p0, Lcom/miui/securityscan/y;->NH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    iget-boolean v0, p0, Lcom/miui/securityscan/y;->NH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/y;->NG:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MC()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/y;->NG:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securityscan/y;->NG:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Oi(Lcom/miui/securityscan/MainActivity;)V

    return-void
.end method
