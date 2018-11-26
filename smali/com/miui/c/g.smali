.class final Lcom/miui/c/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/g;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/c/g;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/a;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/c/e;

    iget-object v1, p0, Lcom/miui/c/g;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "applicationlock"

    invoke-direct {v0, v1, v2}, Lcom/miui/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/miui/c/e;

    iget-object v2, p0, Lcom/miui/c/g;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "securitycenterScan"

    invoke-direct {v1, v2, v3}, Lcom/miui/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/c/g;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/d/d;->bBa(Landroid/content/Context;)Lcom/miui/d/d;

    move-result-object v2

    sget-object v3, Lcom/miui/c/f;->bcE:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/miui/d/d;->bBb(Ljava/lang/String;Lcom/miui/d/f;)V

    sget-object v0, Lcom/miui/c/f;->bcF:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/miui/d/d;->bBb(Ljava/lang/String;Lcom/miui/d/f;)V

    sget-object v0, Lcom/miui/c/f;->bcE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/miui/d/d;->bBc(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/c/f;->bcF:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/miui/d/d;->bBc(Ljava/lang/String;)V

    return-void
.end method
