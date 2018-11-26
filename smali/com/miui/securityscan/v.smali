.class final Lcom/miui/securityscan/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic NC:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/v;->NC:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/v;->NC:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->Og(Lcom/miui/securityscan/MainActivity;Z)Z

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    iget-object v0, p0, Lcom/miui/securityscan/v;->NC:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    return-void
.end method
