.class final Lcom/miui/securityscan/c/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic JP:Lcom/miui/securityscan/c/g;

.field final synthetic JQ:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/c/g;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c/m;->JP:Lcom/miui/securityscan/c/g;

    iput-object p2, p0, Lcom/miui/securityscan/c/m;->JQ:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/c/m;->JQ:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/securityscan/MainActivity;->LY:Z

    return-void
.end method
