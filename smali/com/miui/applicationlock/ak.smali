.class final Lcom/miui/applicationlock/ak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajW:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ak;->ajW:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ak;->ajW:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/ak;->ajW:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->aod(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    return-void
.end method
