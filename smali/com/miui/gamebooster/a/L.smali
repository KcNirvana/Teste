.class final Lcom/miui/gamebooster/a/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fb:Landroid/os/UserHandle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/a/L;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/a/L;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gamebooster/a/L;->fb:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/a/L;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/a/L;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/a/L;->fb:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/a;->eX(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
