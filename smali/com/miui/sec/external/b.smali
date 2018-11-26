.class final Lcom/miui/sec/external/b;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source ""


# instance fields
.field final synthetic bek:Lcom/miui/sec/external/a;

.field final synthetic bel:Landroid/os/IMessenger;


# direct methods
.method constructor <init>(Lcom/miui/sec/external/a;Landroid/os/IMessenger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sec/external/b;->bek:Lcom/miui/sec/external/a;

    iput-object p2, p0, Lcom/miui/sec/external/b;->bel:Landroid/os/IMessenger;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/miui/sec/external/c;

    iget-object v1, p0, Lcom/miui/sec/external/b;->bel:Landroid/os/IMessenger;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/sec/external/c;-><init>(Lcom/miui/sec/external/b;Ljava/lang/String;ILandroid/os/IMessenger;)V

    invoke-virtual {v0}, Lcom/miui/sec/external/c;->start()V

    return-void
.end method
