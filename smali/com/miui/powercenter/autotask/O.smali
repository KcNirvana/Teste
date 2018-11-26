.class final Lcom/miui/powercenter/autotask/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aMa:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/O;->aMa:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/P;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/O;->aMa:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/autotask/P;-><init>(Lcom/miui/powercenter/autotask/O;Ljava/util/Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/P;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
