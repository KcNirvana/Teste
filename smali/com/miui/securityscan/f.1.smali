.class final Lcom/miui/securityscan/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Nl:Lcom/miui/securityscan/e;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/f;->Nl:Lcom/miui/securityscan/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/f;->Nl:Lcom/miui/securityscan/e;

    iget-object v0, v0, Lcom/miui/securityscan/e;->Nk:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    return-void
.end method
