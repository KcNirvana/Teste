.class final Lcom/miui/cleanmaster/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic baT:Lcom/miui/cleanmaster/InstallCallBack;

.field final synthetic baU:I


# direct methods
.method constructor <init>(Lcom/miui/cleanmaster/InstallCallBack;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/cleanmaster/e;->baT:Lcom/miui/cleanmaster/InstallCallBack;

    iput p2, p0, Lcom/miui/cleanmaster/e;->baU:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/cleanmaster/e;->baT:Lcom/miui/cleanmaster/InstallCallBack;

    iget v2, p0, Lcom/miui/cleanmaster/e;->baU:I

    if-ne v0, v2, :cond_0

    :goto_0
    iget v2, p0, Lcom/miui/cleanmaster/e;->baU:I

    invoke-virtual {v1, v0, v2}, Lcom/miui/cleanmaster/InstallCallBack;->bxu(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
