.class Lcom/miui/antispam/util/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private YW:Lcom/miui/antispam/util/b;

.field private YX:Ljava/lang/String;

.field final synthetic YY:Lcom/miui/antispam/util/a;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/util/a;Ljava/lang/String;Lcom/miui/antispam/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/util/c;->YY:Lcom/miui/antispam/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/antispam/util/c;->YX:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antispam/util/c;->YW:Lcom/miui/antispam/util/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/util/c;->YY:Lcom/miui/antispam/util/a;

    invoke-static {v0}, Lcom/miui/antispam/util/a;->Xs(Lcom/miui/antispam/util/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/util/c;->YX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/antispam/util/h;->XG(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/util/d;

    iget-object v2, p0, Lcom/miui/antispam/util/c;->YY:Lcom/miui/antispam/util/a;

    iget-object v3, p0, Lcom/miui/antispam/util/c;->YX:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/antispam/util/c;->YW:Lcom/miui/antispam/util/b;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/miui/antispam/util/d;-><init>(Lcom/miui/antispam/util/a;Ljava/lang/String;Landroid/util/Pair;Lcom/miui/antispam/util/b;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/antispam/util/c;->YY:Lcom/miui/antispam/util/a;

    invoke-static {v1}, Lcom/miui/antispam/util/a;->Xu(Lcom/miui/antispam/util/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
