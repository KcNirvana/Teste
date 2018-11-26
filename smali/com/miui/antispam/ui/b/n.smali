.class final Lcom/miui/antispam/ui/b/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xr:Lcom/miui/antispam/ui/b/c;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/n;->Xr:Lcom/miui/antispam/ui/b/c;

    iput-object p2, p0, Lcom/miui/antispam/ui/b/n;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/n;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/util/h;->XR(Landroid/content/Context;)V

    return-void
.end method
