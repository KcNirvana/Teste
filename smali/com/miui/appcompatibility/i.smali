.class final Lcom/miui/appcompatibility/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic baG:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/i;->baG:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/i;->baG:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/miui/appcompatibility/c;->bwS(Landroid/os/IBinder;)V

    return-void
.end method
