.class final Lcom/miui/cleanmaster/f;
.super Lcom/miui/cleanmaster/InstallCallBack;
.source ""


# instance fields
.field final synthetic baV:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/cleanmaster/f;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/cleanmaster/f;->baV:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/cleanmaster/InstallCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bxu(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/miui/cleanmaster/f;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/cleanmaster/f;->baV:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/cleanmaster/a;->bxA(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
