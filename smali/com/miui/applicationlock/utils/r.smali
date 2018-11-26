.class final Lcom/miui/applicationlock/utils/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic abC:Lcom/miui/applicationlock/utils/d;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/utils/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/r;->abC:Lcom/miui/applicationlock/utils/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
