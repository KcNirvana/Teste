.class final Lcom/miui/securityscan/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic NQ:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/H;->NQ:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/H;->NQ:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/MainActivity;->LJ:Z

    iget-object v0, p0, Lcom/miui/securityscan/H;->NQ:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MK()V

    return-void
.end method
