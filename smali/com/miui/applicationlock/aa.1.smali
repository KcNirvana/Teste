.class final Lcom/miui/applicationlock/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajI:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/aa;->ajI:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/aa;->ajI:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->finish()V

    return-void
.end method
