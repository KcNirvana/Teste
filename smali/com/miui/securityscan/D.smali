.class final Lcom/miui/securityscan/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic NM:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/MainActivity;->MC:Z

    iget-object v0, p0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    new-instance v1, Lcom/miui/securityscan/E;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/E;-><init>(Lcom/miui/securityscan/D;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/CircleView;->Gx(Lcom/miui/securityscan/ui/main/b;)V

    return-void
.end method
