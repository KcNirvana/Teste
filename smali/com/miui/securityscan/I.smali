.class final Lcom/miui/securityscan/I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic NR:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/I;->NR:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/I;->NR:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    return-void
.end method
