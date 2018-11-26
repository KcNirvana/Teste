.class final Lcom/miui/securitycenter/utils/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/utils/f;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/utils/f;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/utils/a;->bqB(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/utils/f;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsi(Landroid/content/Context;Z)V

    return-void
.end method
