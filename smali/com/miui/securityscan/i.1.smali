.class final Lcom/miui/securityscan/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic No:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/i;->No:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/i;->No:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/a;->Ik(Landroid/content/Context;Z)V

    return-void
.end method
